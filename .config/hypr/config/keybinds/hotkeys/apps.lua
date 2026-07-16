-- Apps
hl.bind("SUPER + E", App.Dsp.Runapp("dolphin"))
hl.bind("SUPER + R", App.Dsp.Exec("walker"))
hl.bind("SUPER + V", App.Dsp.Exec("walker -m clipboard"))
hl.bind("SUPER + T", App.Dsp.Exec("runapp kitty"))
hl.bind("SUPER + Period", App.Dsp.Exec("walker -m emojis"))

-- Cmd
hl.bind("CTRL+SHIFT+ALT + Delete", App.Dsp.Exec_Replace("wlogout -p layer-shell"))
hl.bind("Print", App.Dsp.Exec_Once("grimblast --freeze save area - | satty -f -", "slurp")) -- Screen snip
hl.bind("SHIFT + Print", App.Dsp.Exec_Once("grimblast --freeze save area - | wl-copy", "slurp"))
hl.bind("SUPER+SHIFT + C", App.Dsp.Exec_Once("hyprpicker -a")) -- Pick color (Hex) >> clipboard
hl.bind("SUPER + Print", App.Dsp.Exec_Once("$XDG_CONFIG_HOME/hypr/scripts/ocrcap.sh", "slurp"))
