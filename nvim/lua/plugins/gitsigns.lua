return {
	"lewis6991/gitsigns.nvim",
	event = "bufEnter",
	keys = {
		{
			"<leader>gd",
			"<cmd>Gitsigns diffthis --split=belowright<CR>",
			desc = "Git Diff",
		},
	},
}
