hl.window_rule({
    name = "desktop-mate",
    match = { class = "steam_app_3301060" },
    opacity = "0.5",
    float = true,
    center = true,
    no_blur = true,
    no_shadow = true,
    border_size = 0,
    decorate = false,
})

hl.window_rule({
    name = "mate-engine",
    match = { class = "MateEngineX.x86_64" },
    float = true,
    no_blur = true,
    border_size = 0,
    decorate = false,
    immediate = true,
    render_unfocused = true,
    no_focus = false,
})
