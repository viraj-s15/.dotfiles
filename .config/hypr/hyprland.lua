-- █░█ █▄█ █▀█ █▀█ █░░ ▄▀█ █▄░█ █▀▄
-- █▀█ ░█░ █▀▀ █▀▄ █▄▄ █▀█ █░▀█ █▄▀
--
-- Main Hyprland config (Lua format, Hyprland >= 0.55).
-- Migrated from the legacy hyprlang (.conf) setup.
-- See https://wiki.hypr.land/Configuring/Start/

-- Config directory, used for loading the live theme symlink.
local CONF = (os.getenv("XDG_CONFIG_HOME") or (os.getenv("HOME") .. "/.config")) .. "/hypr"

-------------------
---- MONITORS ----
-------------------

hl.monitor({
    output   = "DP-1",
    mode     = "1920x1080@144",
    position = "1080x0",
    scale    = 1,
    bitdepth = 10,
})

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

require("env")

-------------------
---- AUTOSTART ----
-------------------

require("autostart")

---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity    = 0.1, -- -1.0 - 1.0, 0 means no modification.
        force_no_accel = false,

        touchpad = {
            natural_scroll = true,
        },
    },
})

-----------------
---- LAYOUTS ----
-----------------

hl.config({
    dwindle = {
        preserve_split = true, -- you probably want this
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        vrr                      = 0,
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
    },
})

------------------
---- SOURCED  ----
------------------

require("animations")
require("keybindings")
require("windowrules")

-- Theme is a symlink (themes/theme.lua -> themes/<Name>.lua) rewritten at
-- runtime by scripts/themeswitch.sh. loadfile() is used instead of require()
-- so the file is re-read on every `hyprctl reload` rather than being cached.
local theme = loadfile(CONF .. "/themes/theme.lua")
if theme then
    theme()
end
