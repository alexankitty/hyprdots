-- Session Management
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session")) -- Lock
hl.bind("SUPER+SHIFT + L", hl.dsp.exec_cmd("loginctl lock-session"))

-- Monitor Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +10%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 10%-"), { locked = true, repeating = true })
