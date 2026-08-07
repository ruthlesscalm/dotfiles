vim.opt_local.conceallevel = 1
vim.opt_local.concealcursor = "nc"

local function toggle_conceal()
	if vim.opt_local.conceallevel:get() == 1 then
		vim.opt_local.conceallevel = 0
	elseif vim.opt_local.conceallevel:get() == 0 then
		vim.opt_local.conceallevel = 1
	end
end

vim.keymap.set("n", "<leader>th", toggle_conceal, { desc = "Toggle conceal level (0, 1)", buffer = true })
