for _, source in ipairs {
  "astronvim.bootstrap",
  "astronvim.options",
  "astronvim.lazy",
  "astronvim.autocmds",
  "astronvim.mappings",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

vim.api.nvim_set_option("clipboard", "unnamed")
vim.g.material_style = "darker"
vim.g.neovide_scale_factor = 1.0
vim.o.guifont = "JetBrains Mono Medium:h14" -- text below applies for VimScript

-- Helper function for transparency formatting
local alpha = function() return string.format("%x", math.floor(255 * vim.g.transparency or 0.8)) end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.7
vim.g.transparency = 0.3
-- vim.g.neovide_background_color = "#0f1117" .. alpha()
-- vim.g.neovide_background_color = "#020626" .. alpha()
vim.g.neovide_background_color = "#002873" .. alpha()
vim.g.neovide_floating_blur_amount_x = 5.0
vim.g.neovide_floating_blur_amount_y = 5.0
vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5

if astronvim.default_colorscheme then
  if not pcall(vim.cmd.colorscheme, astronvim.default_colorscheme) then
    require("astronvim.utils").notify("Error setting up colorscheme: " .. astronvim.default_colorscheme, "error")
  end
end

require("astronvim.utils").conditional_func(astronvim.user_opts("polish", nil, false), true)
