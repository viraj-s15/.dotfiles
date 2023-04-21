-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {
-- window_background_image = "/home/veer/Pictures/wp5.jpg",
font_size = 14.0,
}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
-- if wezterm.config_builder then
--   config = wezterm.config_builder()
-- end
--
-- -- This is where you actually apply your config choices
-- local mux = wezterm.mux
--
-- wezterm.on('gui-startup', function(cmd)
--   local tab, pane, window = mux.spawn_window(cmd or {})
--   window:gui_window():maximize()
-- end)


-- For example, changing the color scheme:

-- and finally, return the configuration to wezterm
return config
