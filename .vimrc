call plug#begin('~/.vim/plugged')

" file explore
Plug 'preservim/nerdtree'
" git integration
Plug 'tpope/vim-fugitive'
" sintax highlightin
Plug 'sheerun/vim-polyglot'
" status line
Plug 'vim-airline/vim-airline'
" color sheme
Plug 'morhetz/gruvbox'
" language support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" terminal
Plug 'voldikss/vim-floaterm'
" search file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" icons
Plug 'ryanoasis/vim-devicons'
" commentary with gcc
Plug 'tpope/vim-commentary'

call plug#end()

set encoding=UTF-8

syntax on
set number
set expandtab
set shiftwidth=4
set tabstop=4
set termguicolors
colorscheme gruvbox

let g:coc_global_extensions = [
      \ 'coc-go'
      \ ]

let g:webdevicons_enable_nerdtree = 1

" autocomplete with Tab
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#confirm() :
      \ "\<Tab>"

" Toggle NERDTree with Ctrl + b
nnoremap <C-b> :NERDTreeToggle<CR>

" open/close terminal
nnoremap <silent> <C-t> :FloatermToggle<CR>

" back to vim
tnoremap <silent> <C-t> <C-\><C-n>:FloatermToggle<CR>

" search file
nnoremap <C-p> :Files<CR>