return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            scope = {
                enabled = false,
            },
        }
    },
    {
        "nvim-mini/mini.indentscope",
        version = false,
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            symbol = "│",
            options = {
                try_as_border = true,
            },
            draw = {
                delay = 0,
                animation = function()
                    return 0
                end,
            },
        },
        config = function(_, opts)
            local function set_scope_highlight()
                vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", {
                    fg = "#e5c07b",
                    nocombine = true,
                })
            end

            require("mini.indentscope").setup(opts)
            set_scope_highlight()

            vim.api.nvim_create_autocmd("ColorScheme", {
                callback = set_scope_highlight,
            })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "help",
                    "lazy",
                    "mason",
                    "neo-tree",
                    "NvimTree",
                    "notify",
                    "Trouble",
                    "qf",
                },
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })
        end,
    },
}
