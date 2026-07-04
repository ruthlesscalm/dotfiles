return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          ".git/",
        },
      },
      pickers = {
        find_files = {
          hidden = true, -- include hidden files
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>ff", function()
      builtin.find_files({
        hidden = true,
      })
    end, { desc = "Find Files" })

    vim.keymap.set("n", "<leader>fg", function()
      builtin.live_grep({
        additional_args = function()
          return { "--hidden" }
        end,
      })
    end, { desc = "Live Grep" })

    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })

    -- Errors (current buffer)
    vim.keymap.set("n", "<leader>fe", function()
      builtin.diagnostics({ bufnr = 0 })
    end, { desc = "Find Errors (Current Buffer)" })

    -- Errors (workspace)
    vim.keymap.set("n", "<leader>fa", builtin.diagnostics, { desc = "Find All Errors" })
  end,
}
