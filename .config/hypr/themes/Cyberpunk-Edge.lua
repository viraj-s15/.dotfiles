-- Cyberpunk-Edge theme
-- Migrated from the legacy hyprlang theme file.
-- Loaded via themes/theme.lua (symlink) from hyprland.lua.

hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 20")
hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 20")
hl.exec_cmd("kvantummanager --set Cyberpunk-Edge")
hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-yellow'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Cyberpunk-Edge'")
hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
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
        gaps_out = 15,
        border_size = 4,
        col = {
            active_border = { colors = { "rgba(FADA16ff)", "rgba(4DBD4Fff)" }, angle = 45 },
            inactive_border = { colors = { "rgba(5032ACff)", "rgba(1F5322ff)" }, angle = 45 },
        },
        layout = "dwindle",
        resize_on_border = true,
    },
    decoration = {
        rounding = 0,
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
            offset = { 12, 12 },
            range = 0,
            render_power = 4,
            color = 0xffFFA6C2,
        },
    },
})
