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
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "nightfox",
			},
			sections = {
				lualine_x = { "filetype" },
			},
		},
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	{
		"tiagovla/tokyodark.nvim",
	},
}
