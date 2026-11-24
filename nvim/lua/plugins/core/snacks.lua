return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        dashboard = { enabled = true },
        picker = { enabled = true },
        bigfile = { enabled = true },
        quickfile = { enabled = true },
        notifier = { enabled = true },
        words = { enabled = true },
        explorer = {
            enabled = true,
            replace_netrw = true,
        },
    },
    keys = {
        -- Top-level finders
        { "<leader>fs", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
        { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
        { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },

        -- Find
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent Files" },
        { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },

        -- Search
        { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
        { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual Selection or Word", mode = { "n", "x" } },
        { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
        { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
        { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
        { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },

        -- LSP
        { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
        { "grr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
        { "gri", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
        { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },

        -- Utilities
        { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
        { "<leader>gb", function() Snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" } },
        { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },

        { "<leader>fz", function() Snacks.picker.zoxide() end, desc = "Zoxide Directories" },
    },
}
