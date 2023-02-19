return {
  -- {
  --   "kyazdani42/nvim-web-devicons",
  --   event = "BufEnter",
  --   name = "devicons-original",
  -- },

  -- SQLite: required for frecency (Telescope plugin)
  {
    "tami5/sqlite.lua",
    name = "sqlite",
  },
  -- Required for Tig plugin
  {
    "rbgrouleff/bclose.vim",
  },
  {
    "roxma/nvim-yarp",
  },
  -- Optional dependency for wilder.nvim
  {
    "nixprime/cpsm",
    build = "./install.sh",
  },

  -- Optional dependency for wilder.nvim
  {
    "romgrk/fzy-lua-native",
  },
  -- GUI library
  -- Required by navigator
  -- {
  -- 	"ray-x/guihua.lua",
  -- 	as = "guihua",
  -- 	build = "cd lua/fzy && make",
  -- },
  -- Easily create selector popups and prompts
  -- {
  -- 	"hkupty/impromptu.nvim",
  -- 	as = "impromptu",
  -- },
}
