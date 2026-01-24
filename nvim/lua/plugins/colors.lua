return {
	-- ===========================================================================
	--  Colorscheme: Ayu Mirage (Balanced, Brighter, Dim Purple)
	-- ===========================================================================
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		priority = 1000,
		config = function()
			require("ayu").setup({
				mirage = true,

				overrides = {
					-- ------------------------------------------------------------------
					-- BACKGROUND (raised brightness, still Mirage)
					-- ------------------------------------------------------------------
					Normal = { bg = "#232836" },
					NormalFloat = { bg = "#232836" },
					SignColumn = { bg = "#232836" },
					EndOfBuffer = { fg = "#232836" },

					CursorLine = { bg = "#262b3a" },

					-- ------------------------------------------------------------------
					-- GLOBAL FOREGROUND (slightly brighter, low contrast)
					-- ------------------------------------------------------------------
					Comment = { fg = "#737882", italic = true },

					Identifier = { fg = "#cbd0cc" },
					Function = { fg = "#7fa7bb" },
					Type = { fg = "#96aca8" },
					String = { fg = "#92ad80" },

					Statement = { fg = "#c9a36f" },
					Keyword = { fg = "#c9a36f" },

					Number = { fg = "#9c86b8" },
					Boolean = { fg = "#9c86b8" },

					-- ------------------------------------------------------------------
					-- PURPLE (DIMMED, SAME HUE)
					-- ------------------------------------------------------------------
					Special = { fg = "#9c86b8" },
					Constant = { fg = "#9c86b8" },

					-- ------------------------------------------------------------------
					-- LINE NUMBERS (clear but calm)
					-- ------------------------------------------------------------------
					LineNr = { fg = "#737882" },
					CursorLineNr = { fg = "#c9a36f", bold = false },

					-- ------------------------------------------------------------------
					-- UI ELEMENTS (slightly brighter, no shine)
					-- ------------------------------------------------------------------
					VertSplit = { fg = "#313645" },
					WinSeparator = { fg = "#313645" },

					Pmenu = { bg = "#262b3a", fg = "#a3a8af" },
					PmenuSel = { bg = "#2e3445" },
					PmenuSbar = { bg = "#262b3a" },
					PmenuThumb = { bg = "#3e4456" },

					FloatBorder = { fg = "#3e4456", bg = "#232836" },

					Folded = { fg = "#737882", bg = "NONE" },
					FoldColumn = { fg = "#5f6470", bg = "NONE" },
				},

				options = {
					transparency = false,
					cursorline = true,
				},
			})

			vim.cmd.colorscheme("ayu-mirage")
		end,
	},

	-- ===========================================================================
	--  Icons (mini.icons)
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
	--  Statusline (Lualine – Balanced)
	-- ===========================================================================
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = "ayu_mirage",
				globalstatus = true,
				icons_enabled = true,
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 1,
						color = { fg = "#a3a8af" },
					},
				},
				lualine_x = {
					{ "filetype" },
				},
			},
		},
	},
}
