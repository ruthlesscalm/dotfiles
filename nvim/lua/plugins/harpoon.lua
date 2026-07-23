local harpoon
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		harpoon = require("harpoon")
		harpoon:setup()
	end,
	keys = {
		{
			"<leader>ha",
			function()
				harpoon:list():add()
			end,
			desc = "Add file to harpoon",
		},
		{
			"<leader>hh",
			function()
				--- Use telescope menu instead of default harpoon menu

				local conf = require("telescope.config").values
				local function toggle_telescope(harpoon_files)
					local file_paths = {}
					for _, item in ipairs(harpoon_files.items) do
						table.insert(file_paths, item.value)
					end

					require("telescope.pickers")
						.new({}, {
							prompt_title = "Harpoon",
							finder = require("telescope.finders").new_table({
								results = file_paths,
							}),
							previewer = conf.file_previewer({}),
							sorter = conf.generic_sorter({}),
						})
						:find()
				end
				toggle_telescope(harpoon:list())

				---

				-- harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Open harpoon menu",
		},
		{
			"<leader>hp",
			function()
				harpoon:list():prev()
			end,
			desc = "Open previous buffer in harpoon",
		},
		{
			"<leader>hn",
			function()
				harpoon:list():next()
			end,
			desc = "Open next buffer in harpoon",
		},
	},
}
