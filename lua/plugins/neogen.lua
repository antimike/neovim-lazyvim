return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*"
  opts = {
    enabled = true, --if you want to disable Neogen
    input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
    snippet_engine = "luasnip",
    -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
    -- languages = {
    --     lua = {
    --         template = {
    --             annotation_convention = "emmylua" -- for a full list of annotation_conventions, see supported-languages below,
    --             ... -- for more template configurations, see the language's configuration file in configurations/{lang}.lua
    --             }
    --     },
    --     ...
    -- }
  },
}
