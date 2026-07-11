local builtin = require("telescope.builtin")
return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{
			"<leader>ff",
			builtin.find_files,
			desc = "Find Files",
		},
		{
			"<leader>fg",
			builtin.live_grep,
			desc = "Live Grep",
		},
		{
			"<leader>fb",
			builtin.buffers,
			desc = "Buffers",
		},
		{
			"<leader>fh",
			builtin.help_tags,
			desc = "help tags",
		},
	},
}
