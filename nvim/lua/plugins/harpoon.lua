local harpoon
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		harpoon = require("harpoon")
		harpoon:setup()
	end,
	keys = {
		{
			"<leader>ha",
			function()
				harpoon:list():add()
			end,
			desc = "Add file to harpoon",
		},
		{
			"<leader>hh",
			function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Open harpoon menu",
		},
		{
			"<leader>hp",
			function()
				harpoon:list():prev()
			end,
			desc = "Open previous buffer in harpoon",
		},
		{
			"<leader>hn",
			function()
				harpoon:list():next()
			end,
			desc = "Open next buffer in harpoon",
		},
	},
}
