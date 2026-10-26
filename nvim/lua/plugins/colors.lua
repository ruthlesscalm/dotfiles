return {

	{
		"edeneast/nightfox.nvim",
		priority = 1000,
		config = function()
			require("nightfox").setup({
				integrations = {
					blink_cmp = true,
					telescope = true,
				},
			})
			vim.cmd.colorscheme("nightfox")
        end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"AlexvZyl/nordic.nvim",
	},
	{
		"ellisonleao/gruvbox.nvim",
	},
	{
		"neanias/everforest-nvim",
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			-- vim.cmd.colorscheme("rose-pine")
		end,
		--
         -- Sets a noticeable dark red background for the column
         -- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#4b252c" })
    },
    {
        "tiagovla/tokyodark.nvim",
        opts = {
            -- custom options here
        },
        config = function(_, opts)
            -- require("tokyodark").setup(opts) -- calling setup is optional
            -- vim.cmd [[colorscheme tokyodark]]
        end,
    },
}
