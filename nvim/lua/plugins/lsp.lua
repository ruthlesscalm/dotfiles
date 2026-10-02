return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable("clangd")
		vim.lsp.enable("pyright")
		vim.lsp.enable("gopls")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("jdtls")
		vim.lsp.enable("vtsls")
        vim.lsp.enable("html")
        vim.lsp.enable("cssls")
        vim.lsp.enable("tailwindcss")
		vim.lsp.config("jsonls", {
			settings = {
				json = {
					schemas = {
						{
							fileMatch = { "tsconfig.json", "jsconfig.json" },
							url = "https://json.schemastore.org/tsconfig.json",
						},
					},
				},
			},
		})

		vim.lsp.enable("jsonls")
	end,
}
