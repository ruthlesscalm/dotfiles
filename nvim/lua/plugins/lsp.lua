return {
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      -- A. SETUP MASON
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      -- B. CAPABILITIES
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- C. KEYBINDINGS
      local on_attach = function(client, bufnr)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition", buffer = bufnr })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation", buffer = bufnr })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation", buffer = bufnr })
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol", buffer = bufnr })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action", buffer = bufnr })
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show Diagnostics", buffer = bufnr })
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev Diagnostic" })
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
      end

      -- D. GLOBAL ON_ATTACH + CAPABILITIES via vim.lsp.config
      vim.lsp.config("*", {
        on_attach = on_attach,
        capabilities = capabilities,
      })

      -- E. PER-SERVER OVERRIDES
      vim.lsp.config("ts_ls", {
        init_options = {
          hostInfo = "neovim",
          preferences = {
            importModuleSpecifierPreference = "non-relative",
          },
        },
        settings = {
          javascript = {
            preferences = {
              importModuleSpecifier = "non-relative",
            },
          },
          typescript = {
            preferences = {
              importModuleSpecifier = "non-relative",
            },
          },
        },
      })
      vim.lsp.config("tailwindcss", {
        filetypes = {
          "html", "css",
          "javascript", "javascriptreact",
          "typescript", "typescriptreact",
        },
        init_options = {
          userLanguages = {
            javascript = "html",
            typescript = "html",
          },
        },
      })

      -- F. MASON-LSPCONFIG (just handles installation + enabling)
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd", "pyright",
          "ts_ls", "eslint",
          "html", "cssls", "tailwindcss",
          "jdtls", "lua_ls",
        },
        -- No handlers needed — vim.lsp.config above handles everything
      })
    end,
  },
}
