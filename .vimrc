set number relativenumber

let &t_SI = "\e[6 q" 
let &t_SR = "\e[4 q" 
let &t_EI = "\e[2 q" 

syntax on

set expandtab shiftwidth=4 tabstop=4
set incsearch hlsearch ignorecase smartcase

set path+=**
set wildmenu

set mouse=a

let mapleader = " "

" Find file
nnoremap <leader>ff :find 

" File Explorer
nnoremap <leader>e :Ex<CR>

" Save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Quit
nnoremap <C-q> :q<CR>

" System clipboard register
nnoremap <leader>c "+
xnoremap <leader>c "+

" Delete current buffer without closing window
nnoremap <leader>bd :bp \| bd #<CR>

" Next buffer
nnoremap <leader><Tab> :bnext<CR>

" Visual indentation
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Terminal mode
if exists('##terminal')
    tnoremap <C-Esc> <C-\><C-n>
endif

" New tab
nnoremap <leader>tn :tabnew<CR>

colorscheme habamax
set termguicolors
