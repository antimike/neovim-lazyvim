-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.wrap = true
vim.opt.linebreak = true
vim.cmd([[
set list
set listchars=tab:>-
set shiftwidth=4
set tabstop=4
set softtabstop=4
]])
vim.cmd([[
let $GIT_EDITOR = 'nvr -cc split --remote-wait'
]])
