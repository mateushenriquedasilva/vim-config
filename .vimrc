call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/gruvbox-material'
Plug 'luochen1990/rainbow'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'

call plug#end()

syntax on
filetype plugin indent on

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

set mouse=a
set termguicolors

colorscheme gruvbox-material

let g:rainbow_active = 1

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F1> :belowright terminal<CR>

let g:coc_global_extensions = [
\ 'coc-go',
\ 'coc-clangd',
\ 'coc-json'
\ ]

autocmd BufWritePre *.go :silent! GoFmt
autocmd BufWritePre *.c,*.cpp silent! execute ':!clang-format -i %'

nnoremap <F5> :w<CR>:!gcc % -o %< && ./%<<CR>