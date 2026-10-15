-- Toggle Headset Binding
hl.bind("SHIFT + F17", hl.dsp.exec_cmd("yowu-toggle"))
-- Mute Discord
hl.bind("F17", hl.dsp.pass({ window = "class:^(discord.*)$" }))
hl.bind("F16", hl.dsp.pass({ window = "class:^(discord.*)$" }))
