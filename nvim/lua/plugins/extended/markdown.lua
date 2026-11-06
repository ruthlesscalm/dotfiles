return {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },

    opts = {
        enabled = true,

        render_modes = { "n", "c", "t" },

        max_file_size = 10.0,
        debounce = 100,

        -- Better editing experience
        anti_conceal = {
            enabled = true,
            above = 0,
            below = 0,
        },

        -- Headings
        heading = {
            enabled = true,
            sign = false,
            icons = {
                "󰎤 ",
                "󰎧 ",
                "󰎪 ",
                "󰎭 ",
                "󰎱 ",
                "󰎳 ",
            },
            position = "inline",
        },

        -- Code blocks
        code = {
            enabled = true,
            sign = false,
            style = "full",
            position = "left",
            width = "full",
            left_pad = 2,
            right_pad = 2,
            language = true,
            language_icon = true,
            language_name = true,
            disable_background = { "diff" },
        },

        -- Bullets
        bullet = {
            enabled = true,
            icons = { "●", "○", "◆", "◇" },
            left_pad = 0,
        },

        -- Checkboxes
        checkbox = {
            enabled = true,
            unchecked = {
                icon = "󰄱 ",
                highlight = "RenderMarkdownUnchecked",
            },
            checked = {
                icon = "󰱒 ",
                highlight = "RenderMarkdownChecked",
            },
            custom = {
                todo = {
                    raw = "[-]",
                    rendered = "󰥔 ",
                    highlight = "RenderMarkdownTodo",
                },
            },
        },

        -- Quotes
        quote = {
            enabled = true,
            icon = "▋",
            repeat_linebreak = false,
        },

        -- Tables
        pipe_table = {
            enabled = true,
            style = "full",
        },

        -- Links
        link = {
            enabled = true,
            image = "󰥶 ",
            hyperlink = "󰌷 ",
            highlight = "RenderMarkdownLink",
        },

        -- Horizontal rules
        dash = {
            enabled = true,
            icon = "─",
            width = "full",
        },

        -- Inline code
        inline_highlight = {
            enabled = true,
        },

        -- Completions for blink.cmp
        completions = {
            lsp = {
                enabled = true,
            },
        },
    },
}
