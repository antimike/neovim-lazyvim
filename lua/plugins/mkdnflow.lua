return {
  "jakewvincent/mkdnflow.nvim",
  opts = {
    -- ** DEFAULT SETTINGS; TO USE THESE, PASS NO ARGUMENTS TO THE SETUP FUNCTION **

    modules = {
      bib = true,
      buffers = true,
      conceal = true,
      cursor = true,
      folds = true,
      links = true,
      lists = true,
      maps = true,
      paths = true,
      tables = true,
      yaml = true,
    },
    filetypes = { md = true, rmd = true, markdown = true, telekasten = true },
    create_dirs = true,
    perspective = {
      priority = "first",
      fallback = "current",
      root_tell = false,
      nvim_wd_heel = false,
      update = false,
    },
    wrap = false,
    bib = {
      default_path = "/home/archivebox/papis/library.bib",
      find_in_root = true,
    },
    silent = false,
    links = {
      style = "markdown",
      name_is_source = false,
      conceal = false,
      context = 0,
      implicit_extension = nil,
      transform_implicit = false,
      transform_explicit = function(text)
        text = text:gsub(" ", "-")
        text = text:lower()
        text = os.date("%Y-%m-%d_") .. text
        return text
      end,
    },
    new_file_template = {
      use_template = false,
      placeholders = {
        before = {
          title = "link_title",
          date = "os_date",
        },
        after = {},
      },
      template = "# {{ title }}",
    },
    to_do = {
      symbols = { " ", "-", "X" },
      update_parents = true,
      not_started = " ",
      in_progress = "-",
      complete = "X",
    },
    tables = {
      trim_whitespace = true,
      format_on_move = true,
      auto_extend_rows = false,
      auto_extend_cols = false,
    },
    yaml = {
      bib = { override = false },
    },
    mappings = {
      MkdnEnter = { { "i", "n", "v" }, "<CR>" },
      MkdnTab = false,
      MkdnSTab = false,
      MkdnNextLink = { "n", "<Tab>" },
      MkdnPrevLink = { "n", "<S-Tab>" },
      MkdnNextHeading = { "n", "]]" },
      MkdnPrevHeading = { "n", "[[" },
      MkdnGoBack = { "n", "<BS>" },
      MkdnGoForward = { "n", "<Del>" },
      MkdnCreateLink = false, -- see MkdnEnter
      MkdnCreateLinkFromClipboard = { { "n", "v" }, "<leader>p" }, -- see MkdnEnter
      MkdnFollowLink = false, -- see MkdnEnter
      MkdnDestroyLink = { "n", "<M-CR>" },
      MkdnTagSpan = { "v", "<M-CR>" },
      MkdnMoveSource = { "n", "<F2>" },
      MkdnYankAnchorLink = { "n", "ya" },
      MkdnYankFileAnchorLink = { "n", "yfa" },
      MkdnIncreaseHeading = { "n", "+" },
      MkdnDecreaseHeading = { "n", "-" },
      MkdnToggleToDo = { { "n", "v" }, "<M-Space>" },
      MkdnNewListItem = false,
      MkdnNewListItemBelowInsert = { "n", "o" },
      MkdnNewListItemAboveInsert = { "n", "O" },
      MkdnExtendList = false,
      MkdnUpdateNumbering = { "n", "<leader>nn" },
      MkdnTableNextCell = { "i", "<Tab>" },
      MkdnTablePrevCell = { "i", "<S-Tab>" },
      MkdnTableNextRow = false,
      MkdnTablePrevRow = { "i", "<M-CR>" },
      MkdnTableNewRowBelow = { "n", "<leader>ir" },
      MkdnTableNewRowAbove = { "n", "<leader>iR" },
      MkdnTableNewColAfter = { "n", "<leader>ic" },
      MkdnTableNewColBefore = { "n", "<leader>iC" },
      MkdnFoldSection = { "n", "<leader>f" },
      MkdnUnfoldSection = { "n", "<leader>F" },
    },
  },
}
