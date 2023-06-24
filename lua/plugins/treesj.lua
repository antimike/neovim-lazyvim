return {
  "Wansmer/treesj",
  -- keys = { "<space>m", "<space>j", "<space>s" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    -- Use default keymaps
    -- (<space>m - toggle, <space>j - join, <space>s - split)
    -- use_default_keymaps = true,

    -- Node with syntax error will not be formatted
    check_syntax_error = true,

    -- If line after join will be longer than max value,
    -- node will not be formatted
    max_join_length = 120,

    -- hold|start|end:
    -- hold - cursor follows the node/place on which it was called
    -- start - cursor jumps to the first symbol of the node being formatted
    -- end - cursor jumps to the last symbol of the node being formatted
    cursor_behavior = "hold",

    -- Notify about possible problems or not
    notify = true,
    -- langs = langs,

    -- Use `dot` for repeat action
    dot_repeat = true,
  },
}

-- local node_type = {
--   -- `both` will be merged with both presets from `split` and `join` modes tables.
--   -- If you need different values for different modes, they can be overridden
--   -- in mode tables unless otherwise noted.
--   both = {
--     ---If a node contains descendants with a type from the list, it will not be formatted
--     ---@type string[]
--     no_format_with = { 'comment' },
--     ---Separator for arrays, objects, hash e.c.t. (usually ',')
--     ---@type string
--     separator = '',
--     ---Set last separator or not
--     ---@type boolean
--     last_separator = false,
--     ---If true, empty brackets, empty tags, or node which only contains nodes from 'omit' no will handling
--     ---@type boolean
--     format_empty_node = true,
--     ---All nested configured nodes will process according to their presets
--     ---@type boolean
--     recursive = true,
--     ---Type of configured node that must be ignored
--     ---@type string[]
--     recursive_ignore = {},
--
--     --[[ Working with the options below is explained in detail in `advanced node configuration` section. ]]
--     ---Set `false` if node should't be splitted or joined.
--     ---@type boolean|function For function: function(tsnode: TSNode): boolean
--     enable = true,
--     ---@type function|nil function(tsj: TreeSJ): void
--     format_tree = nil,
--     ---@type function|nil function(tsj: TreeSJ): void
--     format_resulted_lines = nil,
--
--     --[[ The options below should be the same for both modes. ]]
--     ---The text of the node will be merged with the previous one, without wrapping to a new line
--     ---@type table List-like table with types 'string' (type of node) or 'function' (function(child: TreeSJ): boolean).
--     omit = {},
--     ---Non-bracket nodes (e.g., with 'then|()' ... 'end' instead of { ... }|< ... >|[ ... ])
--     ---If value is table, should be contains follow keys: { left = 'text', right = 'text' }. Empty string uses by default
--     ---@type boolean|table
--     non_bracket_node = false,
--     ---If you need to process only nodes in the range from / to.
--     ---If `shrink_node` is present, `non_bracket_node` will be ignored
--     ---Learn more in advanced node configuration
--     ---@type table|nil
--     shrink_node = nil,
--     -- shrink_node = { from = string, to = string },
--   },
--   -- Use only for join. If contains field from 'both',
--   -- field here have higher priority
--   join = {
--     ---Adding space in framing brackets or last/end element
--     ---@type boolean
--     space_in_brackets = false,
--     ---Insert space between nodes or not
--     ---@type boolean
--     space_separator = true,
--     ---Adds instruction separator like ';' in statement block.
--     ---It's not the same as `separator`: `separator` is a separate node, `force_insert` is a last symbol of code instruction.
--     ---@type string
--     force_insert = '',
--     ---The `force_insert` symbol will be omitted if the type of node contains in this list
--     -- (e.g. function_declaration inside statement_block in JS no require instruction separator (';'))
--     ---@type table List-like table with types 'string' (type of node) or 'function' (function(child: TreeSJ): boolean).
--     no_insert_if = {},
--   },
--   -- Use only for split. If contains field from 'both',
--   -- field here have higher priority
--   split = {
--     ---All nested configured nodes will process according to their presets
--     ---@type boolean
--     recursive = false,
--     ---Which indent must be on the last line of the formatted node.
--     --- 'normal' – indent equals of the indent from first line;
--     --- 'inner' – indent, like all inner nodes (indent of start line of node + vim.fn.shiftwidth()).
--     ---@type 'normal'|'inner'
--     last_indent = 'normal',
--     ---Which indent must be on the last line of the formatted node.
--     --- 'normal' – indent equals of the indent from first line;
--     --- 'inner' – indent, like all inner nodes (indent of start line of node + vim.fn.shiftwidth()).
--     ---@type 'normal'|'inner'
--     inner_indent = 'inner',
--   },
--   ---If 'true', node will be completely removed from langs preset
--   ---@type boolean
--   disable = false,
--   ---TreeSJ will search child from list into this node and redirect to found child
--   ---If list not empty, another fields (split, join) will be ignored
--   ---@type string[]|table See `advanced node configuration`
--   target_nodes = {},
-- }
