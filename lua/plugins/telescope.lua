return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
    "crispgm/telescope-heading.nvim",
    "AckslD/nvim-neoclip.lua",
    "nvim-telescope/telescope-bibtex.nvim",
    "AckslD/nvim-gfold.lua",
    "nvim-telescope/telescope-smart-history.nvim",
    "nvim-telescope/telescope-cheat.nvim",
    "nvim-telescope/telescope-github.nvim",
    "nvim-telescope/telescope-z.nvim",
    "nvim-telescope/telescope-media-files.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-arecibo.nvim",
    "nvim-telescope/telescope-symbols.nvim",
    "artart222/telescope_find_directories",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        history = {
          path = "~/.local/share/nvim/databases/telescope_history.sqlite3",
        },
        dynamic_preview_title = true,
        buffer_previewer_maker = new_maker,
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob=!.git/",
        },
        prompt_prefix = "   ",
        selection_caret = " ",
        winblend = 20,
      },
      pickers = {
        find_files = {
          find_command = {
            finder,
            "--type=file",
            "--hidden",
            "--follow",
            "--exclude=.git",
          },
          theme = "dropdown",
        },
        oldfiles = {
          theme = "dropdown",
        },
        find_directories = {
          theme = "dropdown",
        },
        help_tags = {
          theme = "ivy",
        },
        git_status = {
          theme = "dropdown",
        },
        git_commits = {
          theme = "ivy",
        },
        git_bcommits = {
          theme = "dropdown",
        },
        git_branches = {
          theme = "ivy",
        },
        colorscheme = {
          enable_preview = true,
          theme = "dropdown",
        },
        diagnostics = {
          theme = "ivy",
        },
        live_grep = {
          theme = "ivy",
        },
        buffers = {
          theme = "dropdown",
        },
        notify = {
          theme = "dropdown",
        },
      },
      extensions = {
        undo = {
          use_delta = true,
          use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
          side_by_side = false,
          diff_context_lines = vim.o.scrolloff,
          entry_format = "state #$ID, $STAT, $TIME",
          mappings = {
            i = {
              -- IMPORTANT: Note that telescope-undo must be available when telescope is configured if
              -- you want to replicate these defaults and use the following actions. This means
              -- installing as a dependency of telescope in it's `requirements` and loading this
              -- extension from there instead of having the separate plugin definition as outlined
              -- above.
              ["<cr>"] = require("telescope-undo.actions").yank_additions,
              ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
              ["<C-cr>"] = require("telescope-undo.actions").restore,
            },
          },
        },
        arecibo = {
          ["selected_engine"] = "google",
          ["url_open_command"] = "xdg-open",
          ["show_http_headers"] = false,
          ["show_domain_icons"] = false,
        },
        frecency = {
          db_root = "home/hactar/.config/nvim/data",
          show_scores = false,
          show_unindexed = true,
          ignore_patterns = { "*.git/*", "*/tmp/*" },
          disable_devicons = false,
          workspaces = {
            ["conf"] = "/home/hactar/.config",
            ["data"] = "/home/hactar/.local/share",
            ["source"] = "/home/hactar/Source",
            ["wiki"] = "/home/hactar/wiki",
          },
        },
        media_files = {
          filetypes = { "png", "webp", "jpg", "jpeg", "mp4", "webm", "pdf" },
          find_cmd = "rg",
        },
        bibtex = {
          -- Depth for the *.bib file
          depth = 1,
          -- Custom format for citation label
          -- custom_formats = {},
          -- Format to use for citation label.
          -- Try to match the filetype by default, or use 'plain'
          -- format = '',
          -- Path to global bibliographies (placed outside of the project)
          global_files = {
            "~/library/library.bib",
          },
          -- Define the search keys to use in the picker
          search_keys = { "author", "year", "title", "publisher" },
          -- Template for the formatted citation
          citation_format = "{{author}} ({{year}}), {{title}}.",
          -- Only use initials for the authors first name
          citation_trim_firstname = true,
          -- Max number of authors to write in the formatted citation
          -- following authors will be replaced by "et al."
          citation_max_auth = 2,
        },
      },
    })
    require("telescope").load_extension("undo")
    require("telescope").load_extension("bibtex")
    require("telescope").load_extension("heading")
    -- optional: vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
  end,
}
