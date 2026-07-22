hl.config ({
    input = {
        kb_layout = "us",
        numlock_by_default = true,
        repeat_delay = 250,
        repeat_rate = 35,
        special_fallthrough = true,
        follow_mouse = true,
        kb_options = "fkeys:basic_13-24,compose:ralt",

        touchpad = {
            natural_scroll = true,
            disable_while_typing = true,
            clickfinger_behavior = true,
            scroll_factor = 0.5,
        },
    },
    binds = {
        scroll_event_delay = 0,
    },
})

hl.gesture({
    action = "workspace",
    fingers = 3,
    direction = "horizontal",
    workspace_swipe_touch = true,
})

hl.config({
    gestures = {
        workspace_swipe_use_r = true,
        workspace_swipe_cancel_ratio = 0.15
    }
})

if hl.plugin.hyprgrass ~= nil then
    hl.config({
        plugin = {
            hyprgrass = {
                sensitivity = 4.0,
                long_press_delay = 200,
                resize_on_border_long_press = true,
                edge_margin = 100,
            }
        }
    })
    hl.plugin.hyprgrass.gesture {
        pattern = {kind = "swipe", direction = "horizontal", fingers = 3},
        action = "emulate_touchpad",
        emulate_fingers = 3,
        emulate_direction = "horizontal",
    }
    -- longpress can trigger mouse binds:
    hl.plugin.hyprgrass.bind {
        pattern = {kind = "longpress", fingers = 2},
        action = hl.dsp.window.drag(),
        mouse = true,
    }
    hl.plugin.hyprgrass.bind {
        pattern = {kind = "longpress", fingers = 3},
        action = hl.dsp.window.resize(),
        mouse = true,
    }
end
