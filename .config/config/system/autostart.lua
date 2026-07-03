hl.on("hyprland.start", function()
    -- UWSM Service runner
    App.Runapp("pypr")
    App.Runapp("walker --gapplication-service")
    App.Runapp("/usr/bin/discord")

    -- Cmds
    App.Exec("wl-clip-persist --clipboard regular")
    App.Exec("/home/alexandra/scripts/load-pump-gif.sh")
    App.Exec("hyprpm reload -n")

    -- Delayed executions
    App.Runapp_Delayed("/usr/bin/controller-monitor", 10)
    App.Runapp_Delayed("coolercontrol", 10)
    App.Exec_Delayed('hyprctl dispatch \'hl.dsp.window.move({ workspace = "special:stash", window = "class:firebotv5", follow = false })\'', 10)
end)
