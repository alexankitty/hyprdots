-- Apps
hl.bind("SUPER + E", function ()
    App.Runapp("dolphin")
end)
hl.bind("SUPER + R", App.Dsp.Exec("walker"))
hl.bind("SUPER + V", App.Dsp.Exec("walker -m clipboard"))
hl.bind("SUPER + T", App.Dsp.Exec("runapp kitty"))
hl.bind("SUPER + Period", App.Dsp.Exec("walker -m emojis"))

-- Cmd
hl.bind("CTRL+SHIFT+ALT + Delete", App.Dsp.Exec_Replace("wlogout -p layer-shell"))
hl.bind("Print", App.Dsp.Exec("grimblast --freeze save area - | satty -f -")) -- Screen snip
hl.bind("SHIFT + Print", App.Dsp.Exec("grimblast --freeze save area - | wl-copy"))
hl.bind("SUPER+SHIFT + C", App.Dsp.Exec("hyprpicker -a")) -- Pick color (Hex) >> clipboard
