set number relativenumber

let &t_SI = "\e[6 q" 
let &t_SR = "\e[4 q" 
let &t_EI = "\e[2 q" 

syntax on

set expandtab shiftwidth=2 tabstop=2
set incsearch hlsearch ignorecase smartcase

set path+=**
set wildmenu

let mapleader = " "
nnoremap <leader>ff :find 
nnoremap <leader>e :Ex<CR> 
nnoremap <M-q> :q<CR>
nnoremap <C-s> :w<CR>

colorscheme habamax
set termguicolors
















