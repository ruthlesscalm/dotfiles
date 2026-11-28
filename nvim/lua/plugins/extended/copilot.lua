local function toggleCopilot()
    if require("copilot.client").is_disabled() then
        vim.cmd("Copilot enable")
        vim.notify("Copilot Enabled")
    else
        vim.cmd("Copilot disable")
        vim.notify("Copilot Disabled")
    end	
end
return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			panel = { enabled = true },
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<M-y>",
					next = "<M-.",
					prev = "<M-,>",
					dismiss = "<C-]>",
				},
			},
			filetypes = { ["*"] = true },
		})
	end,
	keys = {
		{
			"<leader>ao",
			toggleCopilot,
			desc = "Toggle Copilot",
		},
	},
}
