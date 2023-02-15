return {
  "jubnzv/mdeval.nvim",
  ft = {
    "org",
    "md",
    "markdown",
    "vimwiki",
    "rmd",
  },
  opts = {
    require_confirmation = true,
    -- Change code blocks evaluation options.
    eval_options = {
      -- Set custom configuration for C++
      cpp = {
        command = { "clang++", "-std=c++20", "-O0" },
        default_header = [[
    #include <iostream>
    #include <vector>
    using namespace std;
      ]],
      },
      -- Add new configuration for Racket
      racket = {
        command = { "racket" }, -- Command to run interpreter
        language_code = "racket", -- Markdown language code
        exec_type = "interpreted", -- compiled or interpreted
        extension = "rkt", -- File extension for temporary files
      },
    },
  },
  config = function(opts)
    vim.g.markdown_fenced_languages = {
      "python",
      "cpp",
      "lua",
      "bash",
      "zsh",
      "haskell",
      "yaml",
      "json",
      "sh",
      "js",
      "ts",
      "conf",
      "toml",
    }
    require("mdeval").setup(opts)
  end,
}
