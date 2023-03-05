return {
  "lalitmee/browse.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    -- search provider you want to use
    provider = "google", -- duckduckgo, bing

    -- either pass it here or just pass the table to the functions
    -- see below for more
    bookmarks = {},
  },
}
