-- Classes to exclude from the chromakey shader.
-- Add/remove entries here instead of hand-editing a regex.
local chromakeyDisabledClasses = {
    "kitty",
    "waterfox",
    "dev.zed.Zed",
    "discord",
    "com.gabm.satty",
    "strwinclt.exe",
    "steam_app.*",
    "dev.twilitrealm.dusk",
    "Horizon-client",
    "dolphin-emu",
    "mpv",
    "Ares",
    "shadps4",
    "gamescope",
    "org.azahar_emu.Azahar",
}

if hl.plugin.darkwindow ~= nil then
    hl.window_rule({
        name = "chromakey",
        match = { class = ".*" },
        ["darkwindow:shade"] = hl.plugin.darkwindow.build_rule_effect({
            shader = "chromakey",
            args = {
                bkg = { 0.1, 0.1, 0.1 },
                similarity = 0.2,
                amount = 0,
                targetOpacity = 0.7
            }
        }),
    })

    hl.layer_rule({
        name = "chroma-key notification",
        match = { namespace = "wayle-notification-popup" },
        ["darkwindow:shade"] = hl.plugin.darkwindow.build_rule_effect({
            shader = "chromakey",
            args = {
                bkg = { 0.1, 0.1, 0.1 },
                similarity = 0.2,
                amount = 0,
                targetOpacity = 0.7
            }
        }),
    })

    local chromakeyDisabledPattern = {}
    for _, class in ipairs(chromakeyDisabledClasses) do
        table.insert(chromakeyDisabledPattern, "(" .. class .. ")")
    end

    hl.window_rule({
        name = "disable-chromakey",
        match = { class = table.concat(chromakeyDisabledPattern, "|") },
        ["darkwindow:shade"] = "",
    })
end
