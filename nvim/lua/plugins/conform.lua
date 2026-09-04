return {
	"stevearc/conform.nvim",
	opts = {
		-- Use :Mason to install formatters
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettier" },
			go = { "goimports" },
			java = { "google-java-format" },
			c = { "clang-format" },
		},
	},
	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format({
					async = true,
				})
			end,
			desc = "Format Buffer",
		},
	},
}
