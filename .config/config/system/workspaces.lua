local workspaces_per_monitor = 5
local monitor_priority = { "DP-2" }

local function assign_all_workspaces()
    local monitors = hl.get_monitors()
    local ordered = {}
    local matched = {}

    for _, name in ipairs(monitor_priority) do
        for _, monitor in ipairs(monitors) do
            if monitor.name == name and not matched[monitor.name] then
                table.insert(ordered, monitor)
                matched[monitor.name] = true
            end
        end
    end
    for _, monitor in ipairs(monitors) do
        if not matched[monitor.name] then
            table.insert(ordered, monitor)
        end
    end

    for index, monitor in ipairs(ordered) do
        local base = (index - 1) * workspaces_per_monitor
        for i = 1, workspaces_per_monitor do
            local ws = base + i
            hl.workspace_rule({
                workspace = tostring(ws),
                monitor = monitor.name,
                default = (i == 1),
            })
            -- force any already-existing workspace to actually move too
            hl.dispatch(hl.dsp.workspace.move({ workspace = ws, monitor = monitor.name }))
        end
    end
end

assign_all_workspaces()
hl.on("monitor.added", assign_all_workspaces)
