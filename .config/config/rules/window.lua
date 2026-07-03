-- Fix Popups
hl.window_rule({ match = { title = "PopupHost" }, no_max_size = true })
hl.window_rule({ match = { title = "^(New notification)$" }, no_max_size = true })
hl.window_rule({ match = { title = "^(Open File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Select a File)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Choose wallpaper)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Open Folder)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Save As)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(Library)(.*)$" }, float = true })
hl.window_rule({ match = { title = "^(File Upload)(.*)$" }, float = true })

-- PIP
hl.window_rule({
   name = "picture-in-picture",
   match = { title = "[Pp]icture-[Ii]n-[Pp]icture" },
   float = true,
})

-- content type rules
hl.window_rule({
    name = "games",
    match = { content = 3 },
    idle_inhibit = "always",
    immediate = true,
})
hl.window_rule({
    name = "videos",
    match = { content = 2 },
    idle_inhibit = "always",
})

hl.window_rule({
    name = "dialogs",
    match = { modal = true },
    float = true,
    dim_around = true,
})

-- hide xwayland video bridge
hl.window_rule({
    name = "hide-video-bridge",
    match = { class = "^(xwaylandvideobridge)$" },
    opacity = "0.0",
    no_anim = true,
    no_initial_focus = true,
    max_size = { 1, 1 },
    no_blur = true,
    no_focus = true,
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "render-unfocused",
    match = { class = ".*" },
    render_unfocused = true,
})
