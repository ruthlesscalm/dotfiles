return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	cmd = { "ColorizerToggle" },
	keys = {
		{
			"<leader>tc",
			"<cmd>ColorizerToggle<CR>",
			desc = "Toggle Colorizer",
		},
	},
	opts = {
		user_commands = true,
	},
}
