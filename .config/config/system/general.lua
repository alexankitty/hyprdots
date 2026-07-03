hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 3,
        gaps_workspaces = 50,
        resize_on_border = true,
        no_focus_fallback = true,
        layout = "dwindle",
        allow_tearing = true,
        snap = {
            enabled = true,
            border_overlap = true
        }
    },
    misc = {
        middle_click_paste = false,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        vrr = 2,
        animate_manual_resizes = false,
        animate_mouse_windowdragging = false,
        enable_swallow = false,
        swallow_regex = "(foot|kitty|allacritty|Alacritty)",
        disable_hyprland_logo = true,
        force_default_wallpaper = 0,
        allow_session_lock_restore = true,
        initial_workspace_tracking = 2,
        render_unfocused_fps = 120,
        anr_missed_pings = 3,
    },
    ecosystem = {
        enforce_permissions = false
    },
})
