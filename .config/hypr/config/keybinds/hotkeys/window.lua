-- Window Management
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + BracketLeft", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + BracketRight", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER+SHIFT+ALT + Q", hl.dsp.exec_cmd("hyprctl kill")) -- Pick and kill a window
hl.bind("CTRL+SUPER + Backslash", hl.dsp.window.resize({ mode = "exact", x = 640, y = 480 }))
hl.bind("ALT + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.bring_to_top())
end)

-- Window Arrangement
hl.bind("SUPER+SHIFT + Left", hl.dsp.window.move({ direction = "left" }), { })
hl.bind("SUPER+SHIFT + Right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER+SHIFT + Up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER+SHIFT + Down", hl.dsp.window.move({ direction = "down" }))

-- Positioning Mode
hl.bind("SUPER+ALT + Space", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + D", hl.dsp.window.fullscreen({ action = "toggle", maximize = true }))
hl.bind("SUPER + Y", hl.dsp.layout("togglesplit"))

-- Debug
hl.bind("CTRL+SHIFT + W", hl.dsp.exec_cmd('hyprctl clients | wl-copy & notify-send "[Debug] Client Info" "Copied information about wayland clients to clipboard."'))
