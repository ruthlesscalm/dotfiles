return {
    "neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable("clangd")
		vim.lsp.enable("pyright")
		vim.lsp.enable("gopls")
	end,
}
