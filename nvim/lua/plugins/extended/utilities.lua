return {
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        cmd = { "ColorizerToggle" },
        keys = {
            {
                "<leader>tc",
                "<cmd>ColorizerToggle<CR>",
                desc = "Toggle Colorizer",
            },
        },
        opts = {
            user_commands = true,
        },
    },
    {
        "numToStr/Comment.nvim",
        opts = {},
    },
    {
        "jvgrootveld/telescope-zoxide",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("telescope").load_extension("zoxide")
        end,
        keys = {
            {
                "<leader>fz",
                function()
                    require("telescope").extensions.zoxide.list()
                end,
                desc = "Open Zoxide",
            },
        },
    },
}
