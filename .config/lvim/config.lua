-- PLUGINS
lvim.plugins = {
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.4',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'marko-cerovac/material.nvim',
    name = "material",
    config = function()
      require('material').setup({
        contrast = {
          terminal = false,            -- Enable contrast for the built-in terminal
          sidebars = false,            -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = false,    -- Enable contrast for floating windows
          cursor_line = false,         -- Enable darker background for the cursor line
          non_current_windows = false, -- Enable darker background for non-current windows
          filetypes = {},              -- Specify which filetypes get the contrasted (darker) background
        },

        styles = { -- Give comments style such as bold, italic, underline etc.
          comments = { italic = true },
          strings = { bold = true },
          keywords = { underline = true },
          functions = { bold = true, undercurl = true },
          variables = {},
          operators = {},
          types = {},
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
          -- Available plugins:
          "dap",
          "dashboard",
          "gitsigns",
          "hop",
          "indent-blankline",
          "lspsaga",
          "mini",
          "neogit",
          "neorg",
          "nvim-cmp",
          "nvim-navic",
          "nvim-tree",
          "nvim-web-devicons",
          "sneak",
          "telescope",
          "trouble",
          "which-key",
        },

        disable = {
          colored_cursor = true, -- Disable the colored cursor
          borders = false,        -- Disable borders between verticaly split windows
          background = false,     -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
          term_colors = false,    -- Prevent the theme from setting terminal colors
          eob_lines = false       -- Hide the end-of-buffer lines
        },

        high_visibility = {
          lighter = false, -- Enable higher contrast text for lighter style
          darker = true -- Enable higher contrast text for darker style
        },

        lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

        async_loading = true,      -- Load parts of the theme asyncronously for faster startup (turned on by default)

        custom_colors = nil,       -- If you want to everride the default colors, set this to a function

        custom_highlights = {},    -- Overwrite highlights with your own
      })
    end,
  },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "EdenEast/nightfox.nvim" },
  { 'ellisonleao/carbon-now.nvim' },
  { 'shaunsingh/moonlight.nvim' },
  { 'lourenci/github-colors' },
  { 'projekt0n/github-nvim-theme',     version = 'v0.0.7' },
  { 'marko-cerovac/material.nvim' },
  { "ray-x/aurora" },
  { 'ray-x/starry.nvim' },
  { "cpea2506/one_monokai.nvim",       transparent = true, },
  { 'Yazeed1s/minimal.nvim' },
  { 'sainnhe/sonokai' },
  {
    "folke/tokyonight.nvim",
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}

require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = {     -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true, -- disables setting the background color.
  show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
  term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false,             -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15,           -- percentage of the shade to apply to the inactive window
  },
  styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" },     -- Change the style of comments
    conditionals = { "italic" },
    loops = { "bold" },
    functions = { "bold", "italic" },
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = { "bold" },
    properties = {},
    types = { "italic" },
    operators = {},
  },
  color_overrides = {
    all = {
      base = '#11111b',
    },
  },
  custom_highlights = {},
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})

require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {bold=true, italic = true },
    functions = {bold = true, italic=true},
    variables = {italic=true},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})

-- COLORSCHEME
-- lvim.colorscheme = "catppuccin-mocha"
lvim.colorscheme = "tokyonight"
-- lvim.colorscheme = "oxocarbon"
vim.api.nvim_set_option("clipboard", "unnamed")
-- vim.g.material_style = "darker"
vim.g.neovide_scale_factor = 1.05
vim.o.guifont = "JetBrains Mono Medium:h14" -- text below applies for VimScript
-- vim.o.guifont = "DejaVu Sans Mono:h14" -- text below applies for VimScript

-- Helper function for transparency formatting
vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5



-- KEYBINDS
lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}


lvim.builtin.which_key.mappings["f"] = {
  name = "+Live Grep",
  g = { "<cmd>Telescope live_grep<cr>", "live grep" },
  f = { "<cmd>Telescope find_files<cr>", "Find Files" },
  h = { "<cmd>Telescope buffers<cr>", "Buffers" },
}


lvim.format_on_save.enabled = true

local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  },
})

vim.g.nvim_tree_hide_dotfiles = 1
-- LSP/FORMATTERS
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black", filetypes = { "python" } },
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact" },
  },
}

-- Create a new split window at the top
vim.cmd('split')

-- Set its height to a single line
vim.cmd('resize 1')

-- Enter command-line mode in the new window
vim.cmd('wincmd w')

-- Close the preview window
vim.cmd('q')

-- Set cmdheight to zero to hide the original command-line at the bottom
vim.o.cmdheight = 0



-- Neovide stuff



if vim.g.neovide then
  vim.g.neovide_refresh_rate = 144
end
