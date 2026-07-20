local workspaces_per_monitor = 5

local function handle_monitor_event()
Monitor.Assign_Workspaces(workspaces_per_monitor)
Monitor.Write_Primary()
end

handle_monitor_event()
hl.on("monitor.added", handle_monitor_event)
hl.on("monitor.removed", handle_monitor_event)
