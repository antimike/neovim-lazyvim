-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazy_user_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  group = augroup("folds"),
  callback = function()
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldlevel = 5
  end,
})

-- Suggested by the author of mkdnflow: auto-write markdown files
vim.api.nvim_create_autocmd("FileType", { pattern = "markdown", command = "set awa" })
-- Use the following if your buffer is set to become hidden
--vim.api.nvim_create_autocmd("BufLeave", {pattern = "*.md", command = "silent! wall"})
