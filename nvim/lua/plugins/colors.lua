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
		"ellisonleao/gruvbox.nvim",
	},
	{
		"neanias/everforest-nvim",
	},
}
