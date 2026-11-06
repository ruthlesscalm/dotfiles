return {
    {
        "tpope/vim-fugitive",
        keys = {
            {
                "<leader>gi",
                "<cmd>Git<cr>",
                desc = "Git fugitive Status",
            }
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "bufEnter",
        keys = {
            {
                "<leader>gd",
                "<cmd>Gitsigns diffthis --split=belowright<CR>",
                desc = "Git Diff",
            },
        },
    },
}
