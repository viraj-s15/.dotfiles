-- █▀▀ █▄░█ █░█
-- ██▄ █░▀█ ▀▄▀
--
-- Environment variables.
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("GDK_BACKEND", "wayland")

hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_STYLE_OVERRIDE", "kvantum")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- hl.env("GTK_THEME", "Catppuccin-Mocha")
hl.env("GTK_THEME", "Rose-Pine")
hl.env("GTK_CSD", "0")
hl.env("LD_PRELOAD", "/usr/lib/libgtk-nocsd.so.0")
