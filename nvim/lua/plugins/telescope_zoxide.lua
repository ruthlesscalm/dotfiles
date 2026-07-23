return {
	"jvgrootveld/telescope-zoxide",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("telescope").load_extension("zoxide")
	end,
	keys = {
		{
			"<leader>fz",
			function()
				require("telescope").extensions.zoxide.list()
			end,
			desc = "Open Zoxide",
		},
	},
}
