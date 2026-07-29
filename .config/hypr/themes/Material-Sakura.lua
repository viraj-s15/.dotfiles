-- Material-Sakura theme
-- Migrated from the legacy hyprlang theme file.
-- Loaded via themes/theme.lua (symlink) from hyprland.lua.

hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 20")
hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 20")
hl.exec_cmd("kvantummanager --set Material-Sakura")
hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-black'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Material-Sakura'")
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
        gaps_in = 8,
        gaps_out = 14,
        border_size = 4,
        col = {
            active_border = { colors = { "rgba(b4637aff)", "rgba(d7827eff)" }, angle = 45 },
            inactive_border = { colors = { "rgba(286983cc)", "rgba(56949fcc)" }, angle = 45 },
        },
        layout = "dwindle",
        resize_on_border = true,
    },
    decoration = {
        rounding = 12,
        blur = {
            enabled = true,
            size = 6,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            xray = false,
        },
        shadow = {
            enabled = true,
            offset = { 9, 10 },
            range = 5,
            render_power = 4,
            color = 0xff26233a,
        },
    },
})
