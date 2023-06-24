return {
  "tjdevries/colorbuddy.vim",
  "sjl/badwolf",
  -- TreeSitter colorschemes
  {
    "ChristianChiarulli/nvcode-color-schemes.vim",
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "luisiacc/gruvbox-baby",
  },
  { "shaunsingh/nord.nvim", after = "nvcode-colorschemes" },
  {
    "AlexvZyl/nordic.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- opts = {
    --   -- Available themes: 'nordic', 'onedark'.
    --   -- Onedark is WIP.
    --   theme = "nordic",
    --   -- Enable bold keywords.
    --   bold_keywords = false,
    --   -- Enable italic comments.
    --   italic_comments = true,
    --   -- Enable general editor background transparency.
    --   transparent_bg = false,
    --   -- Enable brighter float border.
    --   bright_border = true,
    --   -- Nordic specific options.
    --   -- Set all to false to use original Nord colors.
    --   -- Adjusts some colors to make the theme a bit nicer (imo).
    --   nordic = {
    --     -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    --     reduced_blue = true,
    --   },
    --   -- Onedark specific options.
    --   -- Set all to false to keep original onedark colors.
    --   -- Adjusts some colors to make the theme a bit nicer (imo).
    --   -- WIP.
    --   onedark = {
    --     -- Brighten the whites to fit the theme better.
    --     brighter_whites = true,
    --   },
    --   -- Override the styling of any highlight group.
    --   override = {},
    --   cursorline = {
    --     -- Enable bold font in cursorline.
    --     bold = false,
    --     -- Avialable styles: 'dark', 'light'.
    --     theme = "light",
    --     -- Hide the cursorline when the window is not focused.
    --     hide_unfocused = true,
    --   },
    --   noice = {
    --     -- Available styles: `classic`, `flat`.
    --     style = "classic",
    --   },
    --   telescope = {
    --     -- Available styles: `classic`, `flat`.
    --     style = "flat",
    --   },
    --   leap = {
    --     -- Dims the backdrop when using leap.
    --     dim_backdrop = false,
    --   },
    -- },
    -- -- config = function()
    -- --   require("nordic").load()
    -- -- end,
  },
  {
    "rmehri01/onenord.nvim",
    -- opts = {
    --   theme = nil, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
    --   borders = true, -- Split window borders
    --   fade_nc = false, -- Fade non-current windows, making them more distinguishable
    --   -- Style that is applied to various groups: see `highlight-args` for options
    --   styles = {
    --     comments = "NONE",
    --     strings = "NONE",
    --     keywords = "NONE",
    --     functions = "NONE",
    --     variables = "NONE",
    --     diagnostics = "underline",
    --   },
    --   disable = {
    --     background = false, -- Disable setting the background color
    --     cursorline = false, -- Disable the cursorline
    --     eob_lines = true, -- Hide the end-of-buffer lines
    --   },
    --   -- Inverse highlight for different groups
    --   inverse = {
    --     match_paren = false,
    --   },
    --   custom_highlights = {}, -- Overwrite default highlight groups
    --   custom_colors = {}, -- Overwrite default colors
    -- },
  },
  { "wuelnerdotexe/vim-enfocado" },

  {
    "lalitmee/cobalt2.nvim",
  },
  {
    "shaeinst/roshnivim-cs",
  },
  {
    "sainnhe/sonokai",
  },
  {
    "sainnhe/edge",
  },
  {
    "sainnhe/everforest",
  },
  {
    "rafamadriz/neon",
    config = function()
      local opts = {
        style = "default",
        italic_comment = true,
        italic_keyword = false,
        italic_boolean = false,
        italic_function = false,
        italic_variable = false,
        bold = false,
        transparent = true,
      }

      for k, v in pairs(opts) do
        vim.g["neon_" .. k] = v
      end
    end,
  },
  {
    "folke/tokyonight.nvim",
  },
  {
    "theniceboy/nvim-deus",
  },
  {
    "rockerBOO/boo-colorscheme-nvim",
  },
  {
    "mhartington/oceanic-next",
  },
  {
    "kyazdani42/blue-moon",
  },
  {
    "bluz71/vim-moonfly-colors",
  },
  {
    "bluz71/vim-nightfly-guicolors",
  },
  {
    "ray-x/aurora",
  },
  {
    "savq/melange",
  },
  {
    "shaunsingh/moonlight.nvim",
  },
  {
    "lourenci/github-colors",
  },
  {
    "mcchrish/zenbones.nvim",
  },
  {
    "frenzyexists/aquarium-vim",
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "kvrohit/substrata.nvim",
  },
  {
    "tiagovla/tokyodark.nvim",
  },
  {
    "tanvirtin/monokai.nvim",
  },
  {
    "patstockwell/vim-monokai-tasty",
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus",
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
  },
  {
    "marko-cerovac/material.nvim",
    opts = {

      contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
      },

      styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { --[[ italic = true ]]
        },
        strings = { --[[ bold = true ]]
        },
        keywords = { --[[ underline = true ]]
        },
        functions = { --[[ bold = true, undercurl = true ]]
        },
        variables = {},
        operators = {},
        types = {},
      },

      plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        -- "gitsigns",
        -- "hop",
        -- "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        -- "neorg",
        -- "nvim-cmp",
        -- "nvim-navic",
        -- "nvim-tree",
        -- "nvim-web-devicons",
        -- "sneak",
        -- "telescope",
        -- "trouble",
        -- "which-key",
      },

      disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false, -- Hide the end-of-buffer lines
      },

      high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false, -- Enable higher contrast text for darker style
      },

      lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

      async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

      custom_colors = nil, -- If you want to everride the default colors, set this to a function

      custom_highlights = {}, -- Overwrite highlights with your own
    },
  },
  "RRethy/nvim-base16",
  "glepnir/zephyr-nvim",
  "RishabhRD/nvim-rdark",
  "vigoux/oak",
  "yonlu/omni.vim",
  "fenetikm/falcon",
}
