-- Libraries
require("lib/app-mgmt")
require("lib/monitor")

-- Folders
local require_roots = {
    "config"
}

local info = debug.getinfo(1, 'S')
local module_directory = string.match(info.source, '^@(.*)/')

Require_Files = function(folder)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls -a "' .. module_directory .. "/" .. folder .. '"')
    for filename in pfile:lines() do
        local luafile = string.match(filename, "(.+).lua$")
        if luafile then
            local lua = folder .. "/" .. luafile
            local status, value = pcall(require, lua)
            if not status then
                print("Failed to load module: " .. lua .. "\n" .. value)
            else
                print("Loaded module: " .. folder .. "/" .. filename)
            end
        end
    end
    pfile:close()
end

Require_Folder = function(folder)
    Require_Files(folder)

    --Recurse
    local pfile = io.popen('ls -d "' .. module_directory .. "/" .. folder .. '"/*/ 2>/dev/null')
    for folder_name in pfile:lines() do
        local full_path = string.match(folder_name, "(.+)/$")
        local rel_path = full_path:sub(#module_directory + 2)
        Require_Folder(rel_path)
    end
    pfile:close()
end

for _, root in ipairs(require_roots) do
    local status, value = pcall(Require_Folder, root)
    if not status then
        print("Failed to load folder: " .. root .. "\n" .. value)
    else
        print("Loaded all modules.")
    end
end
