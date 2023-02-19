-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Don't yank pasted-over text
vim.keymap.set("v", "p", '"_dP')

local wk_avail, wk = pcall(require, "which-key")
if not wk_avail then
  return nil
end

-- Wrapper function that provides a "filetype" option for Which-Key mappings
local function register_keymap(tab, opts)
  if opts ~= nil and opts.filetype ~= nil then
    -- Remove opts["filetype"] from opts before passing this table to WhichKey
    local fts = opts.filetype
    opts.filetype = nil
    -- Use the same augroup for all ft-specific keybinds
    local group = vim.api.nvim_create_augroup("lazy_ft_keymaps", { clear = false })
    vim.api.nvim_create_autocmd("FileType", {
      group = group,
      pattern = fts,
      callback = function(args)
        -- Make sure we pass a different opts table for every buffer
        local o = vim.deepcopy(opts)
        o.buffer = args.buf
        wk.register(tab, o)
      end,
    })
  else
    wk.register(tab, opts)
  end
end

register_keymap({
  u = { ":Telescope undo<cr>", "Undo tree" },
  R = { ":Telescope registers<cr>", "Registers" },
  prefix = "<leader>s",
})
register_keymap({
  v = {
    function()
      local venn_enabled = vim.inspect(vim.b.venn_enabled)
      if venn_enabled == "nil" then
        vim.b.venn_enabled = true
        vim.cmd([[setlocal ve=all]])
        -- draw a line on HJKL keystokes
        vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
        -- draw a box by pressing "f" with visual selection
        vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
      else
        vim.cmd([[setlocal ve=]])
        vim.cmd([[mapclear <buffer>]])
        vim.b.venn_enabled = nil
      end
    end,
    "ASCII diagrams",
  },
}, { prefix = "<leader>" })
-- todo: add mapping to convert dot graph to boxart using `graph-easy`
register_keymap({
  t = { ":tig<cr>", "tig" },
  e = {
    ":cd %:p:h<cr>:Neotree action=show toggle=true source=git_status position=float reveal_force_cwd=true %<cr>",
    "explore status (neotree)",
  },
  prefix = "<leader>g",
})
register_keymap({
  e = { ":Neotree action=show toggle=true source=buffers position=right<cr>", "explore buffers (neotree)" },
}, { prefix = "<leader>b" })
register_keymap({
  r = { "<plug>sniprun", "run code snippet (sniprun)" },
}, { prefix = "<leader>", mode = "v" })
if MiniMap ~= nil then
  register_keymap({
    M = {
      name = "MiniMap",
      o = { MiniMap.open, "Open MiniMap" },
      x = { MiniMap.close, "Close MiniMap" },
      t = { MiniMap.toggle, "Toggle MiniMap" },
      e = { MiniMap.toggle_focus, "Toggle MiniMap focus" },
    },
    R = {
      function()
        require("ssr").open()
      end,
      "Structural search-replace",
    },
    x = {
      "<Plug>SnipRunOperator",
      "Execute code snippet (SnipRun)",
      r = { "<Plug>SnipRun", "Run file as code (SnipRun)" },
    },
    t = {
      name = "Test",
      f = {
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        "Run file",
      },
      ["<cr>"] = {
        function()
          require("neotest").run.run()
        end,
        "Run nearest test",
      },
      d = {
        function()
          require("neotest").run.run({ strategy = "dap" })
        end,
        "Debug nearest test",
      },
      s = {
        function()
          require("neotest").run.stop()
        end,
        "Stop nearest test",
      },
      a = {
        function()
          require("neotest").run.attach()
        end,
        "Attach to nearest test",
      },
      S = {
        function()
          require("neotest").summary.toggle()
        end,
        "Summary",
      },
      -- p = {
      --   function()
      --     require("neotest").run.attach()
      --   end,
      --   "Attach to nearest test",
      -- },
    },
  }, { prefix = "<leader>c" })
end
register_keymap({
  C = { require("cmp").mapping.complete, "Trigger completion" },
}, { prefix = "<leader>" })
register_keymap({
  S = {
    name = "Swap",
    N = { ":ISwapNode<cr>", "Swap nearby nodes" },
    n = { ":ISwapNodeWith<cr>", "Swap current node" },
    l = { ":ISwapNodeWithLeft<cr>", "Swap current and left nodes" },
    r = { ":ISwapNodeWithLeft<cr>", "Swap current and right nodes" },
    I = { ":ISwap<cr>", "Swap nearby items" },
    i = { ":ISwapWith<cr>", "Swap current item" },
  },
}, { prefix = "<leader>", mode = "n" })
register_keymap({
  S = {
    name = "Swap",
    N = { ":ISwapNode<cr>", "Swap nearby nodes" },
    n = { ":ISwapNodeWith<cr>", "Swap current node" },
    l = { ":ISwapNodeWithLeft<cr>", "Swap current and left nodes" },
    r = { ":ISwapNodeWithLeft<cr>", "Swap current and right nodes" },
    I = { ":ISwap<cr>", "Swap nearby items" },
    i = { ":ISwapWith<cr>", "Swap current item" },
  },
}, { prefix = "<M>", mode = "i" })
register_keymap({
  R = { "<Plug>(SubversiveSubstituteToEndOfLine)", "Substitute to end of line" },
  rr = { "<Plug>(SubversiveSubstituteLine)", "Substitute line" },
  r = { "<Plug>(SubversiveSubstitute)", "Substitute" },
  rR = { "<Plug>(SubversiveSubstituteRange)", "Substitute over range" },
  rW = { "<Plug>(SubversiveSubstituteWordRange)", "Replace current word over range" },
}, { prefix = "<leader>" })
register_keymap({
  t = {
    name = "Telekasten",
    t = {
      function()
        require("telekasten").godo_today()
      end,
      "Goto today's note",
    },
    T = {
      function()
        require("telekasten").find_daily_notes()
      end,
      "Find daily notes",
    },
    n = {
      function()
        require("telekasten").new_note()
      end,
      "New note",
    },
    N = {
      function()
        require("telekasten").new_templated_note()
      end,
      "New templated note",
    },
    s = {
      function()
        require("telekasten").search_notes()
      end,
      "Search notes",
    },
    f = {
      function()
        require("telekasten").follow_line()
      end,
      "Follow link",
    },
    w = {
      function()
        require("telekasten").goto_thisweek()
      end,
      "Goto this week",
    },
    W = {
      function()
        require("telekasten").find_weekly_notes()
      end,
      "Find weekly notes",
    },
    y = {
      function()
        require("telekasten").yank_notelink()
      end,
      "Yank nortelink",
    },
    c = {
      function()
        require("telekasten").show_calendar()
      end,
      "Show calendar",
    },
    b = {
      function()
        require("telekasten").show_backlinks()
      end,
      "Show baceqkilnks",
    },
    F = {
      function()
        require("telekasten").find_friends()
      end,
      "Find friends",
    },
    x = {
      function()
        require("telekasten").toggle_todo()
      end,
      "Toggle TOuiDO",
    },
    m = {
      function()
        require("telekasten").browse_media()
      end,
      "Browse media",
    },
    ["@"] = {
      function()
        require("telekasten").show_tags()
      end,
      "Show tags",
    },
  },
}, { prefix = "<leader>" })
register_keymap({
  h = {
    name = "HTTP",
    r = { "<Plug>RestNvim", "Run request under cursor" },
    p = { "<Plug>RestNvimLast", "Rerun last request" },
    c = { "<Plug>RestNvimPreview", "Preview request command" },
  },
}, { prefix = "g", filetype = { "html", "javascript", "http", "json", "typescript" } })
register_keymap({
  D = {
    name = "Document",
    c = {
      function()
        require("neogen").generate({ type = "class" })
      end,
      "Class",
    },
    f = {
      function()
        require("neogen").generate({ type = "func" })
      end,
      "Function",
    },
    t = {
      function()
        require("neogen").generate({ type = "type" })
      end,
      "Type",
    },
    F = {
      function()
        require("neogen").generate({ type = "file" })
      end,
      "File",
    },
    ["<cr>"] = {
      function()
        require("neogen").generate()
      end,
      "Auto-detect",
    },
  },
}, { prefix = "<leader>" })
register_keymap({
  C = {
    name = "Configuration (Neoconf)",
    l = { ":Neoconf local<cr>", "Local" },
    g = { ":Neoconf global<cr>", "Global" },
    s = { ":Neoconf show<cr>", "Show merged config" },
    L = { ":Neoconf lsp<cr>", "Merged LSP config" },
    ["<cr>"] = { ":Neoconf<cr>", "Open UI to select config file" },
  },
}, { prefix = "g" })
