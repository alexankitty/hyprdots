hl.window_rule({
    name = "steam-games",
    match = { class = "^(steam_app.*)$" },
    suppress_event = "fullscreen maximize fullscreenoutput",
    immediate = true,
})
