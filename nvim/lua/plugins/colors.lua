return {
	-- ===========================================================================
	--  Color Scheme: Ayu Mirage
	-- ===========================================================================
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		priority = 1000,
		config = function()
			----------------------------------------------------------------------
			-- 1. SETUP AYU (Mirage)
			----------------------------------------------------------------------
			require("ayu").setup({
				mirage = false, -- IMPORTANT: use ayu-mirage colorscheme instead
				overrides = {},
				options = {
					transparency = false,
					cursorline = true,
				},
			})

			-- Apply the correct variant
			vim.cmd("colorscheme ayu-mirage")

			----------------------------------------------------------------------
			-- 2. CUSTOM HIGHLIGHT OVERRIDES
			----------------------------------------------------------------------
			local hl = vim.api.nvim_set_hl

			local comment_fg = "#7f848e"
			local blue_accent = "#61afef"

			----------------------------------------------------------------------
			-- COMMENTS & FOLDS
			----------------------------------------------------------------------
			hl(0, "Comment", { fg = comment_fg, italic = true })

			hl(0, "Folded", { fg = comment_fg, bg = "NONE", bold = true })
			hl(0, "FoldColumn", { fg = "#5c6370", bg = "NONE" })

			----------------------------------------------------------------------
			-- COMPLETION MENU
			----------------------------------------------------------------------
			hl(0, "Pmenu", { bg = "#282c34", fg = "#abb2bf" })
			hl(0, "PmenuSel", {
				bg = "#3e4452",
				fg = blue_accent,
				bold = true,
			})

			hl(0, "CmpItemAbbrMatch", { fg = blue_accent, bold = true })
			hl(0, "CmpItemAbbrMatchFuzzy", { link = "CmpItemAbbrMatch" })

			hl(0, "CmpItemKindVariable", { fg = "#e06c75", italic = true })
			hl(0, "CmpItemKindFunction", { fg = blue_accent, italic = true })
			hl(0, "CmpItemKindMethod", { fg = blue_accent, italic = true })
			hl(0, "CmpItemKind", { fg = "#c678dd", italic = true })
			hl(0, "CmpItemMenu", { fg = "#5c6370", italic = true })

			hl(0, "PmenuSbar", { bg = "#282c34" })
			hl(0, "PmenuThumb", { bg = "#5c6370" })
			hl(0, "FloatBorder", { fg = "#5c6370", bg = "#282c34" })

			----------------------------------------------------------------------
			-- LINE NUMBERS & INDENTS
			----------------------------------------------------------------------
			hl(0, "LineNr", { fg = "#4b5263" })
			hl(0, "CursorLineNr", { fg = blue_accent, bold = true })

			hl(0, "IblIndent", { fg = "#3b4048" })
			hl(0, "IblScope", { fg = blue_accent })
		end,
	},

	-- ===========================================================================
	--  Icons (Mini.icons)
	-- ===========================================================================
	{
		"echasnovski/mini.icons",
		lazy = false,
		opts = {},
		specs = {
			{ "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
		},
		init = function()
			package.preload["nvim-web-devicons"] = function()
				require("mini.icons").mock_nvim_web_devicons()
				return package.loaded["nvim-web-devicons"]
			end
		end,
	},

	-- ===========================================================================
	--  Status Line (Lualine – Ayu Mirage)
	-- ===========================================================================
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				icons_enabled = true,
				theme = "ayu_mirage", -- FIXED
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_x = {
					{ "%S", color = { fg = "#6FCF97" } },
				},
			},
		},
	},
}
