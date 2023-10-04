lvim.plugins = {
{
      'marko-cerovac/material.nvim',
      name = "material",
       config = function()
        require('material').setup({
    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable darker background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        strings = { bold = true  },
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
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false-- Enable higher contrast text for darker style
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_colors = nil, -- If you want to everride the default colors, set this to a function

    custom_highlights = {}, -- Overwrite highlights with your own
})
  end,
    },
    { "nyoom-engineering/oxocarbon.nvim"},
     { "catppuccin/nvim", name = "catppuccin" },
	{"EdenEast/nightfox.nvim"},
	{'ellisonleao/carbon-now.nvim'},
	{'shaunsingh/moonlight.nvim'},
	{'lourenci/github-colors'},
	{ 'projekt0n/github-nvim-theme', version = 'v0.0.7' },
	{'marko-cerovac/material.nvim'},
	{"ray-x/aurora"},
	{'ray-x/starry.nvim'},
	{"cpea2506/one_monokai.nvim",transparent = true,},
	{'Yazeed1s/minimal.nvim'},
	{'sainnhe/sonokai'},
	{
	  "folke/tokyonight.nvim",
	},
}

lvim.colorscheme = "oxocarbon"
vim.api.nvim_set_option("clipboard", "unnamed")
vim.g.material_style = "darker"
vim.g.neovide_scale_factor = 1.05
vim.o.guifont = "JetBrains Mono Medium:h14" -- text below applies for VimScript
-- vim.o.guifont = "DejaVu Sans Mono:h14" -- text below applies for VimScript

-- Helper function for transparency formatting
vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}
