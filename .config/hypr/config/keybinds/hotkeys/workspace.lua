-- Workspace Management
hl.bind("CTRL+SUPER + S", hl.dsp.workspace.toggle_special())
hl.bind("CTRL+SUPER+SHIFT + Up", hl.dsp.window.move({ workspace = "special", silent = true }))
hl.bind("CTRL+SUPER+SHIFT + Right", hl.dsp.window.move({ workspace = "+1" }))
hl.bind("CTRL+SUPER+SHIFT + Left", hl.dsp.window.move({ workspace = "-1" }))
hl.bind("CTRL+SUPER + BracketLeft", hl.dsp.focus({ workspace = "-1" }))
hl.bind("CTRL+SUPER + BracketRight", hl.dsp.focus({ workspace = "+1" }))
hl.bind("CTRL+SUPER + Up", hl.dsp.focus({ workspace = "-5" }))
hl.bind("CTRL+SUPER + Down", hl.dsp.focus({ workspace = "+5" }))
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "-1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "+1" }))
hl.bind("SUPER+SHIFT + mouse_down", hl.dsp.window.move({ workspace = "-1" }))
hl.bind("SUPER+SHIFT + mouse_up", hl.dsp.window.move({ workspace = "+1" }))
hl.bind("SUPER+ALT + mouse_down", hl.dsp.window.move({ workspace = "-1" }))
hl.bind("SUPER+ALT + mouse_up", hl.dsp.window.move({ workspace = "+1" }))
hl.bind("SUPER+ALT + Page_Down", hl.dsp.window.move({ workspace = "+1" }))
hl.bind("SUPER+ALT + Page_Up", hl.dsp.window.move({ workspace = "-1" }))
hl.bind("SUPER+SHIFT + Page_Down", hl.dsp.window.move({ workspace = "+1" }))
hl.bind("SUPER+SHIFT + Page_Up", hl.dsp.window.move({ workspace = "-1" }))
hl.bind("SUPER+ALT + S", hl.dsp.window.move({ workspace = "special", silent = true }))
hl.bind("SUPER + P", hl.dsp.window.pin())
hl.bind("SUPER + G", hl.dsp.group.toggle())
hl.bind("SUPER+SHIFT + G", hl.dsp.window.move({ out_of_group = true }))

-- Stash Workspace
hl.bind("SUPER+SHIFT + N", hl.dsp.workspace.toggle_special("stash")) -- toggles "stash" special workspace visibility
hl.bind("SUPER + N", hl.dsp.exec_cmd("pypr toggle_special stash")) -- moves window to/from the "stash" workspace
