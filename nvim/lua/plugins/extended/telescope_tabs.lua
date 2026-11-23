return {
    "LukasPietzschmann/telescope-tabs",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
        { "<leader>tm", "<cmd>Telescope telescope-tabs list_tabs<cr>", desc = "List Tabs" },
        { "<leader>tp", function() require("telescope-tabs").go_to_previous() end, desc = "Previous Tab" },
    },
    config = function()
        require("telescope").load_extension("telescope-tabs")
        require("telescope-tabs").setup({})
    end,
}
