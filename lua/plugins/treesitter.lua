-- Extend default Treesitter config in LazyVim to include other languages
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "tsx",
      "typescript",
      "http",
      "json",
    })
  end,
}
