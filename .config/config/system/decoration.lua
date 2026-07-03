hl.config({
    general = {
        border_size = 3,
        col = {
            active_border = {
                colors = {
                    "rgba(ffadadee)", "rgba(ffd6a5ee)", "rgba(fdffb6ee)", "rgba(caffbfee)",
                    "rgba(9bf6ffee)", "rgba(a0c4ffee)", "rgba(bdb2ffee)", "rgba(ffc6ffee)"
                },
                angle = 45
            },
            inactive_border = {
                colors = {
                    "rgba(ffadad80)", "rgba(ffd6a580)", "rgba(fdffb680)", "rgba(caffbf80)",
                    "rgba(9bf6ff80)", "rgba(a0c4ff80)", "rgba(bdb2ff80)", "rgba(ffc6ff80)"
                },
                angle = 45
            },
        },
    },
    group = {
        col = {
            border_active = {
                colors = {
                    "rgba(ffadadee)", "rgba(ffd6a5ee)", "rgba(fdffb6ee)", "rgba(caffbfee)",
                    "rgba(9bf6ffee)", "rgba(a0c4ffee)", "rgba(bdb2ffee)", "rgba(ffc6ffee)"
                },
                angle = 45
            },
            border_inactive = {
                colors = {
                    "rgba(ffadad80)", "rgba(ffd6a580)", "rgba(fdffb680)", "rgba(caffbf80)",
                    "rgba(9bf6ff80)", "rgba(a0c4ff80)", "rgba(bdb2ff80)", "rgba(ffc6ff80)"
                },
                angle = 45
            },
        },
        groupbar = {
            col = {
                active = "rgb(f5c2e7)",
                inactive = "rgb(d6a1c8)",
            },
            text_color = "rgb(000000)",
            gradients = true,
            height = 20,
            font_size = 12,
        }
    },
    decoration = {
        rounding = 10,
        dim_inactive = false,
        dim_strength = 0.2,
        dim_special = 0,
        blur = {
            enabled = true,
            xray = false,
            special = true,
            new_optimizations = true,
            size = 4,
            passes = 3,
            brightness = 1,
            noise = 0.01,
            contrast = 1,
            popups = true,
            popups_ignorealpha = 0.6,
            input_methods = true,
        },
        shadow = {
            enabled = true,
            range = 4,
            render_power = 1,
        }
    },
})
