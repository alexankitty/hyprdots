-- Enter the "passthru" submap on SUPER+Escape, exit back to the default
-- (reset) submap on SUPER+Escape while inside it.
hl.bind("SUPER + Escape", hl.dsp.submap("passthru"))
hl.define_submap("passthru", function()
    hl.bind("SUPER + Escape", hl.dsp.submap("reset"))
end)
