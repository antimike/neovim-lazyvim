return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    local helpers = require("null-ls.helpers")
    local docfmt = {
      name = "docformatter",
      filetypes = { "python" },
      method = nls.methods.FORMATTING,
      generator = helpers.formatter_factory({
        command = "docformatter",
        to_stdin = true,
        args = {
          "--close-quotes-on-newline",
          "-",
        },
      }),
    }
    -- nls.register(docfmt)
    return {
      sources = {
        -- nls.builtins.formatting.prettierd,
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.flake8,
        nls.builtins.formatting.black.with({
          extra_args = { "--preview" },
        }),
        nls.builtins.formatting.reorder_python_imports,
        nls.builtins.formatting.autopep8.with({
          extra_args = { "--max-line-length=79" },
        }),
        docfmt,
        nls.builtins.formatting.beautysh,
        nls.builtins.formatting.shfmt,
      },
    }
  end,
}
