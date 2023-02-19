-- Ensure that neovim Python client runs in virtualenv
vim.cmd([[let g:python3_host_prog='/home/hactar/.pyenv/versions/neovim/bin/python']])

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
