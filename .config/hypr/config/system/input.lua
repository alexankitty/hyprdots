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
  hl.plugin.hyprgrass.bind("edge:r:l", hl.dsp.workspace("+1"))
  hl.plugin.hyprgrass.bind("edge:l:r", hl.dsp.workspace("-1"))
  hl.plugin.hyprgrass.bind("longpress:2", hl.dsp.window.move(), { mouse = true })
  hl.plugin.hyprgrass.bind("longpress:3", hl.dsp.window.resize(), { mouse = true })
end
