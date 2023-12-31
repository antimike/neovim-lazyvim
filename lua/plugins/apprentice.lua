return {
  "adisen99/apprentice.nvim",
  dependencies = {
    "rktjmp/lush.nvim",
  },
  config = function()
    require("lush")(require("apprentice").setup({
      plugins = {
        "buftabline",
        "coc",
        "cmp", -- nvim-cmp
        "fzf",
        "gitgutter",
        "gitsigns",
        "lsp",
        "lspsaga",
        "nerdtree",
        "netrw",
        "nvimtree",
        "neogit",
        "packer",
        "signify",
        "startify",
        "syntastic",
        "telescope",
        "treesitter",
      },
      langs = {
        "c",
        "clojure",
        "coffeescript",
        "csharp",
        "css",
        "elixir",
        "golang",
        "haskell",
        "html",
        "java",
        "js",
        "json",
        "jsx",
        "lua",
        "markdown",
        "moonscript",
        "objc",
        "ocaml",
        "purescript",
        "python",
        "ruby",
        "rust",
        "scala",
        "typescript",
        "viml",
        "xml",
      },
    }))
  end,
}
