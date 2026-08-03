vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", {desc = "Open File Explorer"}) -- Open Netrw Explorer

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", {desc = "Save current buffer"}) 
vim.keymap.set("i", "<C-s>", "<esc><cmd>w<CR>", {desc = "Save current buffer"}) 

vim.keymap.set("n", "<M-q>", "<cmd>q<CR>", {desc = "Quit Nvim"})

vim.keymap.set({"n", "x"}, "<leader>c", '"+', {desc = "System clipboard register (+)"})

vim.keymap.set("n", "<M-b>", "<cmd>bdelete<CR>", {desc = "Delete Current buffer"})
vim.keymap.set( "n", "<M-Tab>", "<cmd>bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set( "n", "<M-S-Tab>", "<cmd>bprev<CR>", { desc = "Previous Buffer" })

vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Un-indent selection" })

vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, {desc = "Open signature_help"})

vim.keymap.set("n", "<M-h>", "<cmd>split<CR>", {desc = "Split Horizontally"})
vim.keymap.set("n", "<M-v>", "<cmd>vsplit<CR>", {desc = "Split Vertically"})

vim.keymap.set('t', '<M-Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>tm', "<cmd>term<CR>" , { desc = 'Open Terminal' }
