return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim" 
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    -- TELESCOPE INTEGRATION
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      local conf = require("telescope.config").values
      local themes = require("telescope.themes")
      local opts = themes.get_ivy({ prompt_title = "Harpoon List" })

      require("telescope.pickers").new(opts, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({ results = file_paths }),
        previewer = conf.file_previewer(opts),
        sorter = conf.generic_sorter(opts),
      }):find()
    end

    -- MAPPINGS
    vim.keymap.set({ "n", "i" }, "<M-a>", function() 
      harpoon:list():add()
      vim.notify("󱡁  Added to Harpoon", vim.log.levels.INFO)
    end, { desc = "Harpoon Add File" })

    -- Quick Menu (Native)
    vim.keymap.set({ "n", "i" }, "<C-e>", function() 
      harpoon.ui:toggle_quick_menu(harpoon:list()) 
    end, { desc = "Harpoon Menu" })

    -- Telescope Menu (Leader + t)
    vim.keymap.set("n", "<leader>t", function() 
      toggle_telescope(harpoon:list()) 
    end, { desc = "Harpoon Telescope" })

    -- Navigation
    vim.keymap.set("n", "<C-S-p>", function() harpoon:list():prev() end, { desc = "Harpoon Prev" })
    vim.keymap.set("n", "<C-S-n>", function() harpoon:list():next() end, { desc = "Harpoon Next" })
  end
}
