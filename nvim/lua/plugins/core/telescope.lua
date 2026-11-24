local builtin = require("telescope.builtin")

return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
    opts = {
        defualts = {
            file_ignore_patterns = { "node_modules", ".git" },
        },
    },
	keys = {
		{
			"<leader>tff",
			builtin.find_files,
			desc = "Find Files",
		},
		{
			"<leader>tfF",
			function()
				builtin.find_files({
					hidden = true,
					no_ignore = true,
				})
			end,
			desc = "Find All Files",
		},
		{
			"<leader>tfg",
			builtin.live_grep,
			desc = "Live Grep",
		},
		{
			"<leader>tfb",
			builtin.buffers,
			desc = "Buffers",
		},
		{
			"<leader>tfd",
			function()
				builtin.diagnostics({ bufnr = 0 })
			end,
			desc = "diagnostics (Current Buffer)",
		},
		{
			"<leader>tfD",
			builtin.diagnostics,
			desc = "diagnostics (workspace)",
		},
		{
			"<leader>tfo",
			builtin.oldfiles,
			desc = "Recent Files",
		},
		{
			"<leader>tgc",
			builtin.git_commits,
			desc = "Git Commits",
		},
		{
			"<leader>tgs",
			builtin.git_status,
			desc = "Git telescope Status",
		},
		{
			"<leader>tgf",
			builtin.git_files,
			desc = "Git Files",
		},
		{
			"<leader>tfr",
			builtin.resume,
			desc = "Resume last telescope",
		},
		{
			"<leader>tfa",
			builtin.builtin,
			desc = "Open Builtin",
		},
	},
}
