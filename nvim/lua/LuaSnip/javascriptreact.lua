local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local rep = require("luasnip.extras").rep

-- Import your base JS snippets (arfn, harfn, etc.)
local snippets = require("LuaSnip.javascript")

-- Add JSX-specific snippets
-- <Component />
table.insert(snippets, s("com", {
  t("<"), i(1, "Component"), t(" "), i(2), t(" />"),
}))

-- <tag></tag> (Mirrored)
table.insert(snippets, s("tag", {
  t("<"), i(1, "div"), t(">"),
  i(2),
  t("</"), rep(1), t(">"),
}))

-- <Component> ... </Component>
table.insert(snippets, s("comb", {
  t("<"), i(1, "Component"), t(">"),
  t({ "", "  " }),
  i(2),
  t({ "", "</" }), rep(1), t(">"),
}))

-- Fragment <> </>
table.insert(snippets, s("frag", {
  t("<>"),
  t({ "", "  " }),
  i(1),
  t({ "", "</>" }),
}))

return snippets
