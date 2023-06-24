return {
  "L3MON4D3/LuaSnip",
  config = function(opts)
    require("luasnip").setup(opts)
    require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets" })
  end,
  opts = {
    update_events = "TextChanged,TextChangedI",
    store_selection_keys = "<Tab>",
  },
}
