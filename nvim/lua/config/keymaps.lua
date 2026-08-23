vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", {desc = "Open File Explorer"}) -- Open Netrw Explorer

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", {desc = "Save current buffer"}) 
vim.keymap.set("i", "<C-s>", "<esc><cmd>w<CR>", {desc = "Save current buffer"}) 

vim.keymap.set("n", "<C-q>", "<cmd>q<CR>", {desc = "Quit Window"})

vim.keymap.set({"n", "x"}, "<leader>c", '"+', {desc = "System clipboard register (+)"})

vim.keymap.set("n", "<leader>bd", "<cmd>bp | bd #<CR>", {desc = "Delete Current buffer"})
vim.keymap.set( "n", "<leader><Tab>", "<cmd>bnext<CR>", { desc = "Next Buffer" })

vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Un-indent selection" })

vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, {desc = "Open signature_help"})

vim.keymap.set('t', '<C-Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", {desc = "Open new tab"})
