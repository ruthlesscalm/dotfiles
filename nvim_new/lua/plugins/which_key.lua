return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- preset = "modern",
		preset = "helix",
		delay = function(ctx)
			if ctx.plugin then
				return 0
			end
			return 500
		end,
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = true })
			end,
			desc = "Show All Keymaps",
		},
	},
}
