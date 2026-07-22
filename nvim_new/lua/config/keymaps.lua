vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", {desc = "Open File Explorer"}) -- Open Netrw Explorer

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", {desc = "Save current buffer"}) 
vim.keymap.set("i", "<C-s>", "<esc><cmd>w<CR>", {desc = "Save current buffer"}) 

vim.keymap.set("n", "<M-q>", "<cmd>q<CR>", {desc = "Quit Nvim"})

vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", {desc = "Delete Current buffer"})

vim.keymap.set({"n", "x"}, "<leader>c", '"+', {desc = "System clipboard register (+)"})

