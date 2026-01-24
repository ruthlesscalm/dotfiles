return {
	-- ===========================================================================
	--  Color Scheme: One Dark Pro
	-- ===========================================================================
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		priority = 1000,
		config = function()
			--------------------------------------------------------------------------
			-- 1. SETUP THEME
			--------------------------------------------------------------------------
			require("ayu").setup({
				mirage = true,
				verrides = {
					-- 1. Make the background "somewhat brighter" (lighter grey than default)
					Normal = { bg = "#141921" },
					SignColumn = { bg = "#141921" }, -- Keep gutter same color as bg

					-- 2. The "Purple Accent" (VS Code style)
					-- We override Control Flow keywords (if, for, return) to be Purple
					-- We also aim to hit 'let' with the Keyword override
					Statement = { fg = "#BF97CC" }, -- Muted Purple (for if, for, while)
					Conditional = { fg = "#BF97CC" },
					Repeat = { fg = "#BF97CC" },
					Keyword = { fg = "#BF97CC" }, -- Should affect 'let'

					-- 3. Keep 'const' and 'function' Orange/Yellow (Preventing them from turning Purple)
					-- Use a slightly "dimmed" orange/yellow to match your request
					Type = { fg = "#E6B450" }, -- Dimmed Orange (for const/var types)
					Function = { fg = "#E6B673" }, -- Dimmed Yellow

					-- 4. Dimming the String Green slightly
					String = { fg = "#B8CC52" },
				},
				options = {
					transparency = false,
					cursorline = true,
				},
			})

			vim.cmd("colorscheme ayu-dark")

			--------------------------------------------------------------------------
			-- 2. CUSTOM HIGHLIGHT OVERRIDES
			--------------------------------------------------------------------------
			local hl = vim.api.nvim_set_hl
			local comment_fg = "#7f848e" -- The grey you requested
			local blue_accent = "#61afef" -- Standard OneDark blue for active items

			--------------------------------------------------------------------------
			-- COMMENTS & FOLDS
			--------------------------------------------------------------------------
			-- Readable soft grey comments
			hl(0, "Comment", { fg = comment_fg, italic = true })

			-- Folds now match Comments exactly (as requested)
			hl(0, "Folded", { fg = comment_fg, bg = "NONE", bold = true })
			hl(0, "FoldColumn", { fg = "#5c6370", bg = "NONE" })

			--------------------------------------------------------------------------
			-- COMPLETION MENU
			--------------------------------------------------------------------------
			hl(0, "Pmenu", { bg = "#282c34", fg = "#abb2bf" })
			hl(0, "PmenuSel", {
				bg = "#3e4452",
				fg = blue_accent, -- Swapped Peach for Blue
				bold = true,
			})

			-- CMP Matches
			hl(0, "CmpItemAbbrMatch", { fg = blue_accent, bold = true })
			hl(0, "CmpItemAbbrMatchFuzzy", { link = "CmpItemAbbrMatch" })

			-- CMP Item Kinds (Variables, Functions, etc.)
			hl(0, "CmpItemKindVariable", { fg = "#e06c75", italic = true }) -- Red
			hl(0, "CmpItemKindFunction", { fg = blue_accent, italic = true }) -- Blue
			hl(0, "CmpItemKindMethod", { fg = blue_accent, italic = true }) -- Blue
			hl(0, "CmpItemKind", { fg = "#c678dd", italic = true }) -- Purple
			hl(0, "CmpItemMenu", { fg = "#5c6370", italic = true })

			hl(0, "PmenuSbar", { bg = "#282c34" })
			hl(0, "PmenuThumb", { bg = "#5c6370" })
			hl(0, "FloatBorder", { fg = "#5c6370", bg = "#282c34" })

			--------------------------------------------------------------------------
			-- LINE NUMBERS
			--------------------------------------------------------------------------
			hl(0, "LineNr", { fg = "#4b5263" })
			hl(0, "CursorLineNr", { fg = blue_accent, bold = true }) -- Swapped Peach for Blue

			-- Indent guides
			hl(0, "IblIndent", { fg = "#3b4048" })
			hl(0, "IblScope", { fg = blue_accent }) -- Swapped Peach for Blue
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
	--  Status Line (Lualine)
	-- ===========================================================================
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				icons_enabled = true,
				theme = "onedark",
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_x = {
					{ "%S", color = { fg = "#6FCF97" } }, -- command preview
				},
			},
		},
	},
}
