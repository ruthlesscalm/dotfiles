return {
  "nvim-treesitter/nvim-treesitter-context",
  event = { "BufReadPost", "BufNewFile" },
  opts = { mode = "cursor", max_lines = 3 },
  keys = {
    {
      "<leader>tt",
      function()
        local tsc = require("treesitter-context")
        tsc.toggle()
        vim.notify("Toggled Treesitter Context", vim.log.levels.INFO, { title = "Option" })
      end,
      desc = "Toggle Treesitter Context",
    },
  },
}
