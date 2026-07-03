hl.window_rule({
    name = "wine-apps",
    match = { class = ".*\\.exe" },
    suppress_event = "fullscreen maximize fullscreenoutput",
    immediate = true,
})
