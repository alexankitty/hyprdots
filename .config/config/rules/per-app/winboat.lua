hl.window_rule({
    name = "winboat",
    match = { class = "^(winboat-.*)$" },
    suppress_event = "suppress_event fullscreen maximize fullscreenoutput",
    no_blur = true,
})
