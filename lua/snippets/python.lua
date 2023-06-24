local ls = require("luasnip")
local extras = require("luasnip.extras")
local expand_conditions = require("luasnip.extras.expand_conditions")

local snip = ls.snippet
-- local text = ls.text_node
local insert = ls.insert_node
local dynamic = ls.dynamic_node
local container = ls.snippet_node
local fmt = require("luasnip.extras.fmt").fmt
-- local rep = extras.rep
-- local func = extras["function"] -- Function node
local line_begin = expand_conditions.line_begin

--- Return a node whose default text is the previous visual selection.
---@param args
---@param parent
local get_visual = function(args, parent, old_state, user_args)
  if #parent.snippet.env.SELECT_RAW > 0 then
    return container(nil, insert(1, parent.snippet.env.SELECT_RAW))
  else -- If SELECT_RAW is empty, return a blank insert node
    return container(nil, insert(1, user_args.default_text))
  end
end

return {
  -- abstract methods
  snip(
    {
      trig = "@abs",
      regTrig = false,
      snippetType = "snippet",
      priority = 1500,
      desc = "Abstract method",
      wordTrig = true,
    },
    fmt(
      [[
        @abstractmethod
        def {}(self, {}):
            {}
    ]],
      {
        insert(1, "method_name"),
        insert(2, "params"),
        insert(3, "..."),
      }
    ),
    { condition = line_begin }
  ),

  -- class methods
  snip(
    {
      trig = "@class",
      regTrig = false,
      snippetType = "snippet",
      priority = 1500,
      desc = "Class method",
      wordTrig = true,
    },
    fmt(
      [[
        @classmethod
        def {}(cls, {}):
            {}
    ]],
      {
        insert(1, "method_name"),
        insert(2, "params"),
        insert(3, "..."),
      }
    ),
    { condition = line_begin }
  ),

  -- multiline strings
  snip(
    {
      trig = "'''",
      desc = "multiline string",
      wordTrig = false,
    },
    fmt(
      [[
    """{}"""
    ]],
      {
        dynamic(1, get_visual),
      }
    )
  ),
}
