return {
  "iberianpig/tig-explorer.vim",
  name = "Tig",
  cmd = "Tig",
  config = function()
    -- From https://github.com/mhinz/neovim-remote
    -- Auto-deletes git-related buffers when closed so that nvr knows we're done with them
    vim.cmd([[autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete]])
  end,
}
