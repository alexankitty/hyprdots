-- Classes that never get chromakey.
-- Entries ending in ".*" are prefix matches, everything else is exact.
local chromakeyDisabledClasses = {
    "kitty", "waterfox", "dev.zed.Zed", "discord", "com.gabm.satty",
    "strwinclt.exe", "steam_app.*", "dev.twilitrealm.dusk", "Horizon-client",
    "dolphin-emu", "mpv", "Ares", "shadps4", "gamescope",
    "org.azahar_emu.Azahar", "blender", "client.exe", "nexon_client.exe",
}

-- Classes that always get chromakey, even if a toolkit is detected.
-- Same syntax: ".*" at the end means prefix match, otherwise exact.
local chromakeyAllowedClasses = {
    "FFPWA-.*", -- example placeholder, replace with your own
}

-- Toolkits that always get chromakey, even though a toolkit is detected.
-- "gtk4-adwaita" matches only libadwaita apps.
-- "gtk4" matches all GTK4 apps, adwaita ones included.
-- An optional "toolkit_" prefix is accepted and ignored.
local chromakeyAllowedToolkits = {
    "gtk4-adwaita",
}

-- Builds a matcher function from a list of exact / "prefix.*" entries
local function make_class_matcher(entries)
    local exact, prefixes = {}, {}
    for _, entry in ipairs(entries) do
        local prefix = entry:match("^(.*)%.%*$")
        if prefix then
            table.insert(prefixes, prefix)
        else
            exact[entry] = true
        end
    end

    return function(class)
        if not class then return false end
        if exact[class] then return true end
        for _, prefix in ipairs(prefixes) do
            if class:sub(1, #prefix) == prefix then return true end
        end
        return false
    end
end

-- Builds a matcher from a list of toolkit names
local function make_toolkit_matcher(entries)
    local set = {}
    for _, entry in ipairs(entries) do
        set[(entry:gsub("^toolkit_", ""))] = true
    end

    return function(tk, variant)
        if not tk then return false end
        if set[tk] then return true end
        return variant ~= nil and set[tk .. "-" .. variant] == true
    end
end

local class_disabled  = make_class_matcher(chromakeyDisabledClasses)
local class_allowed   = make_class_matcher(chromakeyAllowedClasses)
local toolkit_allowed = make_toolkit_matcher(chromakeyAllowedToolkits)

if hl.plugin.darkwindow ~= nil then
    local chromakeyArgs = {
        bkg = { 0.1, 0.1, 0.1 },
        similarity = 0.2,
        amount = 0,
        targetOpacity = 0.7,
    }

    hl.layer_rule({
        name = "chroma-key notification",
        match = { namespace = "wayle-notification-popup" },
        ["darkwindow:shade"] = hl.plugin.darkwindow.build_rule_effect({
            shader = "chromakey",
            args = {
                bkg = { 0.1, 0.1, 0.1 },
                similarity = 0.1,
                amount = 0,
                targetOpacity = 0.7,
            },
        }),
    })

    hl.on("window.open", function(w)
        if not w then return end
        if class_disabled(w.class) then return end

        -- Allow-listed classes and toolkits skip the "no toolkit" requirement
        if not class_allowed(w.class) then
            local tk, variant = Toolkit.of(w)
            if tk ~= nil and not toolkit_allowed(tk, variant) then return end
        end

        hl.dispatch(hl.plugin.darkwindow.dsp_shade({
            shader = "chromakey",
            args = chromakeyArgs,
            window = w,
        }))
    end)

    hl.bind("SUPER+SHIFT+O", hl.plugin.darkwindow.dsp_shade({
        shader = "chromakey",
        args = chromakeyArgs,
    }))
end
