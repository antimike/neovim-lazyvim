return {
  {
    "akinsho/org-bullets.nvim",
    as = "org-bullets",
    ft = "org",
    opts = {
      symbols = { "◉", "○", "✸", "✿" },
      -- or a function that receives the defaults and returns a list
      -- -- symbols = function(default_list)
      -- --   table.insert(default_list, "♥")
      -- --   return default_list
      -- -- end
    },
  },
  -- ASCII Diagrams
  {
    "jbyuki/venn.nvim",
  },
  {
    "renerocksai/calendar-vim",
  },
  {
    "oberblastmeister/neuron.nvim",
    opts = {
      virtual_titles = true,
      mappings = true,
      run = nil, -- function to run when in neuron dir
      neuron_dir = "~/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
      leader = "<leader>z", -- the leader key to for all mappings, remember with 'go zettel'
    },
  },
  {
    "jbyuki/nabla.nvim",
  },
}
