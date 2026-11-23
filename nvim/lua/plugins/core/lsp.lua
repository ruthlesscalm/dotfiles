return {
	"neovim/nvim-lspconfig",
	config = function()
		local border = "rounded"
		local hover_handler = vim.lsp.handlers.hover
		local signature_help_handler = vim.lsp.handlers.signature_help

		vim.lsp.handlers.hover = function(err, result, ctx, config)
			hover_handler(err, result, ctx, vim.tbl_deep_extend("force", config or {}, {
				border = border,
			}))
		end

		vim.lsp.handlers.signature_help = function(err, result, ctx, config)
			signature_help_handler(err, result, ctx, vim.tbl_deep_extend("force", config or {}, {
				border = border,
			}))
		end

		vim.lsp.enable("clangd")
		vim.lsp.enable("pyright")
		vim.lsp.enable("gopls")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("jdtls")

		vim.lsp.enable("vtsls")
		vim.lsp.enable("html")
		vim.lsp.enable("cssls")
		vim.lsp.enable("tailwindcss")

		vim.lsp.config("emmet_language_server", {
			filetypes = {
				"html",
				"css",
				"javascriptreact",
				"typescriptreact",
			},
		})

		vim.lsp.enable("emmet_language_server")
	end,
}
