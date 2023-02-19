return {
  enabled = false,
  "RRethy/nvim-treesitter-textsubjects",
  config = function(opts)
    require("nvim-treesitter.configs").setup(opts)
  end,

  -- init = function()
  --   -- no need to load the plugin, since we only need its queries
  --   require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textsubjects")
  -- end,
  opts = {
    textsubjects = {
      enable = true,
      prev_selection = ",", -- (Optional) keymap to select the previous selection
      keymaps = {
        ["?"] = "textsubjects-smart",
        ["A"] = "textsubjects-container-outer",
        ["I"] = "textsubjects-container-inner",
      },
    },
  },
}
