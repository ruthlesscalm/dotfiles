local facts = {
	{
		"VS Code just spun up 14 Chromium processes",
		"and ate 3.8 GB of RAM to edit a 40-line JSON file.",
	},
	{
		"Imagine shipping an entire web browser",
		"just to render a blinking cursor.",
	},
	{
		"Your editor needs a loading screen, telemetry,",
		"and 900 MB of node_modules to change a font.",
	},
	{
		"Electron developers saw 16 GB of RAM",
		"and took it as a personal challenge.",
	},
	{
		"37 toolbars, 14 sidebars, 3 AI popups,",
		"and 4 square inches left to actually read code.",
	},
	{
		"YOUR IDE IS STILL LOADING.",
        "While mine is already running.",
	},
	{
		"Mouse users discovered shortcuts exist",
		"and wrote a blog post about it.",
	},
	{
		"You didn't forget to save.",
		"Your editor forgot to tell you it crashed.",
	},
	{
		"Hands on Home Row",
	},
	{
		"TOUCHING THE MOUSE IS A SKILL ISSUE.",
	},
	{
		"My fingers haven't left the home row since 2024.",
		"Enjoy your carpal tunnel.",
	},
	{
		"RTFM",
	},
}

math.randomseed(os.time())
local fact = facts[math.random(#facts)]

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		dashboard = {
			enabled = true,
			sections = {
				{ section = "header" },
				function()
					local lines = {
						{ "󰚌  ", hl = "DiagnosticError" },
						{ "stderr : ", hl = "SnacksDashboardSpecial" },
						{ fact[1], hl = "SnacksDashboardFooter" },
					}
					if fact[2] then
						table.insert(lines, { "\n          " .. fact[2], hl = "SnacksDashboardFooter" })
					end
					return {
						align = "center",
						padding = { 1, 0 },
						text = lines,
					}
				end,
				{ section = "keys", gap = 1, padding = 1 },
				{ section = "startup" },
			},
		},
		picker = {
			enabled = true,
		},
		bigfile = { enabled = true },
		quickfile = { enabled = true },
		notifier = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		-- Top-level finders
		{
			"<leader>fs",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader>:",
			function()
				Snacks.picker.command_history()
			end,
			desc = "Command History",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},

		-- Find
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.git_files()
			end,
			desc = "Find Git Files",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent Files",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Find Config File",
		},

		-- Search
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>sw",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "Visual Selection or Word",
			mode = { "n", "x" },
		},
		{
			"<leader>sd",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "Diagnostics",
		},
		{
			"<leader>sh",
			function()
				Snacks.picker.help()
			end,
			desc = "Help Pages",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Keymaps",
		},
		{
			"<leader>su",
			function()
				Snacks.picker.undo()
			end,
			desc = "Undo History",
		},

		-- LSP
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"grr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"gri",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "Goto Implementation",
		},
		{
			"<leader>ss",
			function()
				Snacks.picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},

		-- Utilities
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Buffer",
		},
		{
			"<leader>gb",
			function()
				Snacks.gitbrowse()
			end,
			desc = "Git Browse",
			mode = { "n", "v" },
		},
		{
			"<leader>fz",
			function()
				Snacks.picker.zoxide()
			end,
			desc = "Zoxide Directories",
		},
	},
}
