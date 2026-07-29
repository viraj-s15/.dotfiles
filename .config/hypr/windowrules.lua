-- █░█░█ █ █▄░█ █▀▄ █▀█ █░█░█ █▀█ █░█ █░░ █▀▀ █▀
-- ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀ █▀▄ █▄█ █▄▄ ██▄ ▄█
--
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
--
-- Rule names are kept from the legacy config (windowrule-1 .. windowrule-38)
-- so they stay traceable against git history.

-- Opacity-only rules: { name index, class, opacity }
local opacityRules = {
    { 1,  "^(firefox)$",                     "0.85 0.85" },
    { 2,  "^(mailspring)$",                  "0.85 0.85" },
    { 3,  "^(thorium-browser)$",             "0.90 0.90" },
    { 4,  "^(vivaldi-snapshot)$",            "0.90 0.90" },
    { 5,  "^(neovide)$",                     "0.80 0.80" },
    { 6,  "^(nautilus)$",                    "0.80 0.80" },
    { 7,  "^(Steam)$",                       "0.80 0.80" },
    { 8,  "^(steam)$",                       "0.80 0.80" },
    { 9,  "^(zed)$",                         "0.80 0.80" },
    { 10, "^(steamwebhelper)$",              "0.80 0.80" },
    { 11, "^(spotify)$",                     "0.80 0.80" },
    { 12, "^(Code)$",                        "0.85 0.85" },
    { 13, "^(Antigravity)$",                 "0.85 0.85" },
    { 14, "^(Cursor)$",                      "0.85 0.85" },
    { 15, "^(kitty)$",                       "0.85 0.85" },
    { 16, "^(org.kde.dolphin)$",             "0.80 0.80" },
    { 17, "^(thunar)$",                      "0.90 0.90" },
    { 19, "^(nwg-look)$",                    "0.80 0.80" },
    { 20, "^(zen-browser)$",                 "0.85 0.85" },
    { 21, "^(qt5ct)$",                       "0.80 0.80" },
    { 23, "^(com.github.tchx84.Flatseal)$",  "0.80 0.80" }, -- Flatseal-Gtk
    { 24, "^(hu.kramo.Cartridges)$",         "0.80 0.80" }, -- Cartridges-Gtk
    { 25, "^(com.obsproject.Studio)$",       "0.80 0.80" }, -- Obs-Qt
    { 26, "^(gnome-boxes)$",                 "0.80 0.80" }, -- Boxes-Gtk
    { 27, "^(discord)$",                     "0.80 0.80" }, -- Discord-Electron
    { 28, "^(WebCord)$",                     "0.80 0.80" }, -- WebCord-Electron
}

for _, r in ipairs(opacityRules) do
    hl.window_rule({
        name    = "windowrule-" .. r[1],
        match   = { class = r[2] },
        opacity = r[3],
    })
end

-- Floating + opacity rules
local floatRules = {
    { 18, "^(org.kde.ark)$",                       "0.80 0.80" },
    { 22, "^(com.github.rafostar.Clapper)$",       "0.90 0.90" }, -- Clapper-Gtk
    { 29, "^(app.drey.Warp)$",                     "0.80 0.80" }, -- Warp-Gtk
    { 30, "^(net.davidotek.pupgui2)$",             "0.80 0.80" }, -- ProtonUp-Qt
    { 31, "^(yad)$",                               "0.80 0.80" }, -- Protontricks-Gtk
    { 33, "^(pavucontrol)$",                       "0.80 0.70" },
    { 34, "^(blueman-manager)$",                   "0.80 0.70" },
    { 35, "^(nm-applet)$",                         "0.80 0.70" },
    { 36, "^(nm-connection-editor)$",              "0.80 0.70" },
    { 37, "^(org.kde.polkit-kde-authentication-agent-1)$", "0.80 0.70" },
}

for _, r in ipairs(floatRules) do
    hl.window_rule({
        name    = "windowrule-" .. r[1],
        match   = { class = r[2] },
        opacity = r[3],
        float   = true,
    })
end

-- No blur for the launcher
hl.window_rule({
    name    = "windowrule-32",
    match   = { class = "^(ulauncher)$" },
    no_blur = true,
})

-- Keep xwaylandvideobridge fully invisible and unfocusable
hl.window_rule({
    name             = "windowrule-38",
    match            = { class = "^(xwaylandvideobridge)$" },
    opacity          = "0.0 override 0.0 override",
    no_anim          = true,
    no_focus         = true,
    no_initial_focus = true,
})
