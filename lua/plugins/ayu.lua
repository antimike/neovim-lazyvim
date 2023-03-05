return {
  "Shatur/neovim-ayu",
  opts = {
    mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
  },
  config = function(opts)
    require("ayu").setup(opts)
    local found, lualine = pcall(require, "lualine")
    if found then
      lualine.setup({
        options = {
          theme = "ayu",
        },
      })
    end
  end,
}
