vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", {desc = "Open File Explorer"}) -- Open Netrw Explorer
vim.keymap.set("n", "<leader>sc", "<cmd>source %<CR>", {desc = "Source current lua/vimrc buffer"}) -- source current buffer
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", {desc = "Save current buffer"}) -- save buffer
vim.keymap.set("i", "<C-s>", "<esc><cmd>w<CR>", {desc = "Save current buffer"}) -- save buffer
