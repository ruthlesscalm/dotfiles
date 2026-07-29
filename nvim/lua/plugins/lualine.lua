return {
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
}
