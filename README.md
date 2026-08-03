# dotfiles

Config files for my Arch Linux rice, running Hyprland on Wayland.

![image](https://github.com/viraj-s15/.dotfiles/assets/79002760/fc3a03b6-62fc-4a7f-8c7c-78ee286afba0)

![image](https://github.com/viraj-s15/.dotfiles/assets/79002760/034c4465-ed13-4bf7-98c2-5809fc1ee2c0)

## Current setup

| | |
|---|---|
| Distro | Arch Linux |
| Compositor | Hyprland 0.56 (Lua config) |
| Bar | Waybar 0.15 |
| Terminal | Kitty |
| Shell | Zsh + oh-my-zsh, Starship prompt |
| Editor | Neovim |
| Launcher | Rofi (Wayland) |
| Notifications | Dunst |
| Wallpaper | awww (formerly swww) |
| Clipboard | cliphist |
| GTK / Qt theming | nwg-look, Kvantum, qt5ct/qt6ct |
| File manager | Thunar, Ranger |

## Hyprland uses the Lua config format

As of Hyprland 0.55 the `hyprlang` (`.conf`) format is deprecated, and it will be
removed in a future release. This config has been migrated to Lua.

```
.config/hypr/
├── hyprland.lua      entry point — monitors, input, layouts, misc
├── env.lua           environment variables
├── autostart.lua     startup programs (replaces exec-once)
├── animations.lua    bezier curves and animations
├── keybindings.lua   all keybinds
├── windowrules.lua   window and layer rules
└── themes/
    ├── theme.lua     symlink to the active theme
    └── *.lua         Catppuccin Mocha/Latte, Tokyo Night, Rose Pine,
                      Decay Green, Cyberpunk Edge, Graphite Mono,
                      Material Sakura
```

Two things worth knowing if you're migrating your own config:

- **The format is chosen at startup, not at reload.** If `hyprland.lua` exists it
  wins and `hyprland.conf` is ignored. A running instance that started in legacy
  mode cannot be switched over with `hyprctl reload` — you have to restart the
  session.
- **`hyprctl dispatch` now expects a Lua expression.** The legacy form fails:

  ```
  $ hyprctl dispatch workspace 2
  error: [string "return hl.dispatch(workspace 2)"]:1: ')' expected near '2'
  ```

  Use `hyprctl dispatch 'hl.dsp.focus({ workspace = 2 })'` instead. This breaks
  external tools that shell out to `hyprctl`, so any scripts need updating.
  Waybar's `hyprland/workspaces` module is affected — see below.

### Theme switching

`themes/theme.lua` is a symlink rewritten at runtime by
`scripts/themeswitch.sh`, which then calls `hyprctl reload`. The main config
loads it with `loadfile()` rather than `require()` so it is re-read on every
reload instead of being cached.

### Waybar workspaces

Waybar's `hyprland/workspaces` module dispatches over Hyprland's IPC socket
using the legacy syntax, so clicking a workspace does nothing under a Lua config
root ([Alexays/Waybar#5008](https://github.com/Alexays/Waybar/issues/5008)).
This config uses `ext/workspaces` instead, which activates workspaces through
the `ext_workspace_manager_v1` Wayland protocol and is unaffected.

One gotcha with that module: its `{id}` is the protocol handle counter, not the
workspace number. Hyprland destroys a workspace as soon as its last window
leaves, so cycling windows between workspaces churns through handles and the
labels drift upwards — workspace 3 starts rendering as `14`. Use `{name}` for
the real number.

Sorting has the same trap. `sort-by-number` is a deprecated alias for
`sort-by-id`, which orders by that drifting handle, so a destroyed and
recreated workspace jumps to the end of the bar. Sorting by name is the module
default, but the comparator tests `sort_by_id_` first, so an explicit
`sort-by-id` or `sort-by-number` key silently overrides it. Set
`sort-by-name` and drop the others.

One limit: the numeric comparison only kicks in when *every* workspace name is
a digit string. Open a named or special workspace and the whole bar falls back
to lexicographic ordering.

## Installing

```
git clone https://github.com/viraj-s15/.dotfiles.git
```

Files mirror their real locations, so `.config/hypr` belongs at
`~/.config/hypr`, and so on. Copy or symlink whichever parts you want — there is
no install script.

Credentials are deliberately excluded. `.config/gh/config.yml` is tracked but
`hosts.yml`, which holds the OAuth token, is gitignored.

## Notes

- **Zsh only.** The `.bashrc` here is the stock Arch stub and is not maintained.
- Only configs for tools actually in use are tracked. Configs for window
  managers, bars and terminals that are no longer installed or used —
  `awesome`, `bspwm`, `polybar`, `alacritty`, `tmux`, `fish`, `wezterm` and
  others — have been removed; they remain in the git history if needed.
- `.config/swww/` keeps its old directory name; the wallpaper daemon it drives
  is now `awww-daemon`.

## Firefox

Theme: [Seamless Rosé](https://addons.mozilla.org/en-US/firefox/addon/seamless-rose/)

Smooth-scrolling `about:config` tweaks:

| key | value |
|---|---|
| `general.smoothScroll.lines.durationMaxMS` | 400 |
| `general.smoothScroll.lines.durationMinMS` | 200 |
| `general.smoothScroll.mouseWheel.durationMaxMS` | 400 |
| `general.smoothScroll.mouseWheel.durationMinMS` | 400 |
| `general.smoothScroll.other.durationMaxMS` | 400 |
| `general.smoothScroll.other.durationMinMS` | 200 |
| `general.smoothScroll.pages.durationMaxMS` | 400 |
| `general.smoothScroll.pages.durationMinMS` | 200 |
| `mousewheel.acceleration.start` | 0 |
| `mousewheel.min_line_scroll_amount` | 50 |
| `toolkit.scrollbox.smoothScroll` | false |

## Packages

```
hyprland waybar kitty neovim rofi-wayland dunst awww cliphist
wlogout grimblast-git hyprpicker starship zsh oh-my-zsh-git
zsh-autosuggestions zsh-syntax-highlighting nwg-look kvantum
qt5ct qt6ct thunar ranger lazygit github-cli spicetify-cli
```
