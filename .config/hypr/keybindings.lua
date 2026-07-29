-- █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █ █▄░█ █▀▀ █▀
-- █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ █ █░▀█ █▄█ ▄█
--
-- See https://wiki.hypr.land/Configuring/Basics/Binds/

local mainMod = "SUPER" -- windows key
local scripts = "~/.config/hypr/scripts"

--------------------------------
---- WINDOW/SESSION ACTIONS ----
--------------------------------

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(scripts .. "/dontkillsteam.sh"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("teams-for-linux --ozone-platform-hint=auto --use-gl=desktop"))
hl.bind(mainMod .. " + delete", hl.dsp.exit())            -- kill hyprland session
hl.bind(mainMod .. " + X", hl.dsp.window.float())         -- toggle floating
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("zapzap"))
hl.bind("ALT + return", hl.dsp.window.fullscreen())       -- toggle fullscreen
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd(scripts .. "/gamemode.sh")) -- disable hypr effects for gamemode
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("swaylock"))   -- lock screen
hl.bind(mainMod .. " + backspace", hl.dsp.exec_cmd("wlogout -b 2 -c 0 -r 0 -L 930 -R 930 -T 300 -B 300 --protocol layer-shell"))
hl.bind("mouse:274", hl.dsp.exec_cmd(";"))

hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + U", hl.dsp.exec_cmd("obsidian"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("chromium --ozone-platform-hint=auto --use-gl=desktop"))
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd("wihotspot"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("neovide --neovim-bin ~/.local/bin/lvim --no-multigrid --maximized --frame none"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("wlsunset -T 4500"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("zed"))
hl.bind(mainMod .. " + ALT + Z", hl.dsp.exec_cmd("pkill wlsunset"))

-------------------------------
---- APPLICATION SHORTCUTS ----
-------------------------------

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty")) -- open terminal
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd('GTK_THEME="Catppuccin-Mocha" nautilus')) -- file manager
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("firefox"))

-- rofi is toggled on/off if you repeat the key presses
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pkill rofi || ~/.config/rofi/launchers/type-1/launcher.sh"))
hl.bind(mainMod .. " + tab", hl.dsp.exec_cmd("pkill rofi || " .. scripts .. "/rofilaunch.sh w")) -- switch between desktop applications
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("pkill rofi || " .. scripts .. "/rofilaunch.sh f"))   -- browse system files

-- NOTE: SUPER + M is bound twice (as in the original config): clipboard
-- history below, and mailspring further down. The later bind wins.
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("cliphist list | rofi -dmenu -display-columns 2 | cliphist decode | wl-copy"))

-----------------------
---- AUDIO CONTROL ----
-----------------------

hl.bind("F10", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o m"))                        -- toggle audio mute
hl.bind("F11", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o d"), { repeating = true })  -- decrease volume
hl.bind("F12", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o i"), { repeating = true })  -- increase volume

hl.bind("XF86AudioMute", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o m"))              -- toggle audio mute
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -i m"))           -- toggle microphone mute
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o d"), { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(scripts .. "/volumecontrol.sh -o i"), { repeating = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

----------------------------
---- BRIGHTNESS CONTROL ----
----------------------------

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(scripts .. "/brightnesscontrol.sh i"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(scripts .. "/brightnesscontrol.sh d"), { repeating = true })

---------------------------------
---- SCREENSHOT/SCREENCAPTURE ----
---------------------------------

hl.bind(mainMod .. " + P", hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -')) -- screenshot snip
hl.bind(mainMod .. " + ALT + P", hl.dsp.exec_cmd("grim ~/Apps/grim/$(date +'%y%m%d_%Hh%Mm%Ss_screenshot.png')")) -- print current screen
hl.bind("CONTROL + SHIFT + P", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$" })) -- start/stop obs recording

-----------------------------
---- CUSTOM SCRIPT BINDS ----
-----------------------------

hl.bind(mainMod .. " + ALT + up", hl.dsp.exec_cmd("~/.config/waybar/wbarconfgen.sh n"))   -- next waybar mode
hl.bind(mainMod .. " + ALT + down", hl.dsp.exec_cmd("~/.config/waybar/wbarconfgen.sh p")) -- previous waybar mode
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd(scripts .. "/themeselect.sh"))         -- theme select menu
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd(scripts .. "/rofiselect.sh"))          -- rofi style select menu
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd('mailspring --password-store="gnome-libsecret"'))

--------------------
---- MOVE FOCUS ----
--------------------

hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "d" }))
hl.bind("ALT + Tab",           hl.dsp.focus({ direction = "d" }))

--------------------
---- WORKSPACES ----
--------------------

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + ALT + right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + ALT + left",  hl.dsp.focus({ workspace = "e-1" }))

------------------------------
---- MOVE/RESIZE WINDOWS  ----
------------------------------

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Resize with mainMod + SHIFT + arrows
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 10,  y = 0,   relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -10, y = 0,   relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0,   y = -10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0,   y = 10,  relative = true }), { repeating = true })

-- Resize with ALT + arrows
hl.bind("ALT + LEFT",  hl.dsp.window.resize({ x = -100, y = 0,    relative = true }))
hl.bind("ALT + RIGHT", hl.dsp.window.resize({ x = 100,  y = 0,    relative = true }))
hl.bind("ALT + UP",    hl.dsp.window.resize({ x = 0,    y = -100, relative = true }))
hl.bind("ALT + DOWN",  hl.dsp.window.resize({ x = 0,    y = 100,  relative = true }))

-- Move focused window
hl.bind(mainMod .. " + SHIFT + UP",    hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + DOWN",  hl.dsp.window.move({ direction = "d" }))
hl.bind(mainMod .. " + SHIFT + LEFT",  hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + RIGHT", hl.dsp.window.move({ direction = "r" }))
