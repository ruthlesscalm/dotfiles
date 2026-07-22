return {
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
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
	},
	{
		"shatur/neovim-ayu",
	},
	{
		"olimorris/onedarkpro.nvim",
	},
	{
		"Mofiqul/dracula.nvim",
	},

	{
		"rebelot/kanagawa.nvim",
	},
	{
		"edeneast/nightfox.nvim",
	},
	{
		"navarasu/onedark.nvim",
	},
	{
		"sainnhe/gruvbox-material",
    name = "gruvbox-material",
		priority = 1000,
		config = function()
			-- require("gruvbox-material").setup({
			-- 	integrations = {
			-- 		blink_cmp = true,
			-- 		telescope = true,
			-- 	},
			-- })

			vim.cmd.colorscheme("gruvbox-material")
		end,
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
		"ribru17/bamboo.nvim",
	},
	{
		"mofiqul/dracula.nvim",
	},
	{
		"savq/melange-nvim",
	},
	{
		"Yazeed1s/oh-lucy.nvim",
	},
	{
		"NTBBloodbath/sweetie.nvim",
	},
	{ "ntk148v/habamax.nvim", dependencies = { "rktjmp/lush.nvim" } },
	{
		"ellisonleao/gruvbox.nvim",
	},
	{
		"neanias/everforest-nvim",
	},
}
