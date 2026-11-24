return {
    {
        "NeogitOrg/neogit",
        cmd = "Neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {
                "<leader>gi",
                "<cmd>Neogit<cr>",
                desc = "Open Neogit",
            },
        },
        opts = {},
    },
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPost", "BufNewFile" },
        opts = {},
        keys = {
            {
                "<leader>gd",
                "<cmd>Gitsigns diffthis --split=belowright<CR>",
                desc = "Git Diff",
            },
        },
    },
}
