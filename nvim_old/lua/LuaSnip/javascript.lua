local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {
  -- Full arrow function (already working)
  s("arfn", {
    t("const "),
    i(1, "fn"),
    t(" = ("),
    i(2),
    t({ ") => {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  -- Half arrow function (no const, no =)
  -- Usage: callbacks, hooks, map/filter
  s("harfn", {
    t("("),
    i(1),
    t({ ") => {", "  " }),
    i(2),
    t({ "", "}" }),
  }),

  -- Short arrow function (one-liner, no const, no =)
  s("sarfn", {
    t("("),
    i(1),
    t(") => "),
    i(2),
  }),

  s("colog", {
    t("console.log("),
    i(1),
    t(")"),
  }),

}
