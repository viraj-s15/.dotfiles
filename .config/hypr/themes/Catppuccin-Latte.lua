-- Catppuccin-Latte theme
-- Migrated from the legacy hyprlang theme file.
-- Loaded via themes/theme.lua (symlink) from hyprland.lua.

hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 20")
hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 20")
hl.exec_cmd("kvantummanager --set Catppuccin-Latte")
hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-grey'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Latte'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface font-name 'Cantarell 10'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface document-font-name 'Cantarell 10'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface monospace-font-name 'CaskaydiaCove Nerd Font Mono 9'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface font-hinting 'full'")

hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "20")

hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,
        col = {
            active_border = { colors = { "rgba(dc8a78ff)", "rgba(8839efff)" }, angle = 45 },
            inactive_border = { colors = { "rgba(7287fdcc)", "rgba(179299cc)" }, angle = 45 },
        },
        layout = "dwindle",
        resize_on_border = true,
    },
    decoration = {
        rounding = 10,
        blur = {
            enabled = true,
            size = 6,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            xray = false,
        },
        shadow = {
            enabled = false,
        },
    },
})

hl.layer_rule({ match = { namespace = "waybar" }, blur = true })
