return {
	{
		"edeneast/nightfox.nvim",
		priority = 1000,
		config = function()
			require("nightfox").setup({
				integrations = {
					blink_cmp = true,
					telescope = true,
				},
			})
			vim.cmd.colorscheme("nightfox")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"AlexvZyl/nordic.nvim",
	},
	{
		"olimorris/onedarkpro.nvim",
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"sainnhe/gruvbox-material",
	},
	{
		"sainnhe/sonokai",
	},
	{
		"sainnhe/edge",
	},
	{
		"alexvzyl/nordic.nvim",
	},
	{
		"tiagovla/tokyodark.nvim",
	},
	{
		"folke/tokyonight.nvim",
	},
	{
		"ribru17/bamboo.nvim",
	},
	{
		"mofiqul/dracula.nvim",
	},
	{
		"NTBBloodbath/sweetie.nvim",
	},
	{
		"ellisonleao/gruvbox.nvim",
	},
	{
		"neanias/everforest-nvim",
	},
}
