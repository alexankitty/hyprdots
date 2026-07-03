-- Toggle Headset Binding
hl.bind("SHIFT + F17", hl.dsp.exec_cmd("~/scripts/toggle-bind-headset.sh"))
-- Mute Discord
hl.bind("F17", hl.dsp.pass({ window = "class:^(discord.*)$" }))
hl.bind("F16", hl.dsp.pass({ window = "class:^(discord.*)$" }))
