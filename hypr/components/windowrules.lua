
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Float Dialogs
hl.window_rule({
    name  = "float-dialogs",
    match = { class = "xdg-desktop-portal-gtk" },
    match = { title = "^(New File|Open File|Open Folder|Save As|All Files|Choose Default Install Path)$" },
    float = true,
    size  = { 1280, 800 }
})

-- Pavucontrol floating
hl.window_rule({
    name  = "pavucontrol-float",
    match = { class = "org.pulseaudio.pavucontrol" },
    float = true,
})

-- windowrule {
--     name = float-thunar-dialogs
--     match:class=^(thunar)$
--     match:title=^(File Operation Progress|Copying files)
--     float = yes
-- }

-- windowrule {
--     name = move-steam-to-its-home
--     match:initial_class=^(steam)$
--     workspace = 6
--     no_initial_focus = no
-- }

-- windowrule {
--     name = eclipse-to-desktop-3
--     match:class=Eclipse
--     workspace = 3
-- }
