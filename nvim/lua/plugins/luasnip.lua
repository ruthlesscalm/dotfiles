return {
	"L3MON4D3/LuaSnip",
	build = (not vim.fn.has("win32") and "make install_jsregexp") or nil,
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local ls = require("luasnip")

		-- Enable LuaSnip
		ls.config.set_config({
			history = true,
			updateevents = "TextChanged,TextChangedI",
			enable_autosnippets = false,
		})

		-- Load snippets
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_lua").lazy_load({
			paths = vim.fn.stdpath("config") .. "/lua/LuaSnip",
		})
	end,
}
