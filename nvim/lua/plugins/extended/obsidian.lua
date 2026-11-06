return {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- use latest release, remove to use latest commit
    ---@module 'obsidian'
    ---@type obsidian.config
    ft = "markdown",
    opts = {
        legacy_commands = false, -- this will be removed in 4.0.0
        workspaces = {
            {
                name = "personal",
                path = "~/Obsidian/vault/",
            },
        },
        picker = {
            name = "telescope.nvim"
        },
        templates = {
            folder = "system/templates",
            date_format = "%Y-%m-%d",
            time_format = "%H:%M",
        },
        ui = {
            enable = false,
        }
    },
}
