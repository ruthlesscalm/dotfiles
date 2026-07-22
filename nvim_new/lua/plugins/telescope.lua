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
			"<leader>fF",
			function()
				builtin.find_files({
					hidden = true,
					no_ignore = true,
				})
			end,
			desc = "Find All Files",
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
			"<leader>fd",
			function()
				builtin.diagnostics({ bufnr = 0 })
			end,
			desc = "diagnostics (Current Buffer)",
		},
		{
			"<leader>fD",
			builtin.diagnostics,
			desc = "diagnostics (workspace)",
		},
		{
			"<leader>fo",
			builtin.oldfiles,
			desc = "Recent Files",
		},
		{
			"<leader>fc",
			builtin.git_commits,
			desc = "Git Commits",
		},
		{
			"<leader>fs",
			builtin.git_status,
			desc = "Git Status",
		},
    {
			"<leader>fr",
			builtin.resume,
			desc = "Resume last telescope",
		},
	},
}
