-- ▄▀█ █░█ ▀█▀ █▀█ █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
-- █▀█ █▄█ ░█░ █▄█ ▄█ ░█░ █▀█ █▀▄ ░█░
--
-- Replaces the legacy `exec-once` keyword.
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
    -- reset XDPH for screenshare
    hl.exec_cmd("~/.config/hypr/scripts/resetxdgportal.sh")

    -- for XDPH
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- authentication dialogue for GUI apps
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")

    hl.exec_cmd("waybar")            -- system panel
    hl.exec_cmd("blueman-applet")    -- systray app for BT
    hl.exec_cmd("nm-applet --indicator") -- systray app for Network/Wifi
    hl.exec_cmd("dunst")             -- notification daemon

    -- clipboard history
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    hl.exec_cmd("awww-daemon")       -- wallpaper daemon
end)
