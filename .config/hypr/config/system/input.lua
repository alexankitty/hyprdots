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
    hl.plugin.hyprgrass.bind {
        pattern = {kind = "swipe", direction = "l", fingers = 3},
        action = hl.dsp.focus({workspace = "+1"}),
    }
    hl.plugin.hyprgrass.bind {
        pattern = {kind = "swipe", direction = "r", fingers = 3},
        action = hl.dsp.focus({workspace = "-1"}),
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
