-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[
augroup nvim_ghost_user_autocommands
  au User www.reddit.com,www.stackoverflow.com setfiletype markdown
  au User www.reddit.com,www.github.com setfiletype markdown
  au User *github.com setfiletype markdown
augroup END
]])
