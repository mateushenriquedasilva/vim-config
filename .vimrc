call plug#begin('~/.vim/plugged')

" Essencial para linting e autocompletar.
" coc.nvim é a base para o Language Server Protocol (LSP).
" O LSP do Go (gopls) melhora o autocompletar, refatoração, e outras funcionalidades.
" Você precisará instalá-lo separadamente com :CocInstall coc-go
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin principal para Go. 
" Inclui sintaxe, linting, e ferramentas como GoImports.
Plug 'fatih/vim-go'

" Adicione este plugin para o destaque de sintaxe de Java
Plug 'sheerun/vim-polyglot'

" Gerenciador de arquivos.
" Essencial para navegar pela estrutura de projetos.
Plug 'preservim/nerdtree'

" Ícones para arquivos e diretórios no NERDTree.
" Requer uma Nerd Font para funcionar corretamente.
Plug 'ryanoasis/vim-devicons'

" Tema de cores para o Vim.
" Melhora a legibilidade do código.
Plug 'sainnhe/gruvbox-material'

" Destaque de parênteses e chaves correspondentes.
" Ajuda a evitar erros de sintaxe e melhora a legibilidade.
Plug 'luochen1990/rainbow'

" Destaque de espaços em branco e tabulação.
" Evita problemas de formatação.
Plug 'ntpeters/vim-better-whitespace'

" Substitua a tela inicial do Vim por uma lista customizável dos seus arquivos recentes e sessões de trabalho.
Plug 'mhinz/vim-startify'

call plug#end()

" --- Configurações Gerais ---

" Atalhos
" Use <F2> para abrir e fechar o NERDTree, mais fácil de alcançar.
noremap <F2> :NERDTreeToggle<CR>

" Exibe os números de linha.
set number

" Formata o código Go automaticamente ao salvar o arquivo.
autocmd BufWritePost *.go :silent GoImports

" Use o tema gruvbox-material
colorscheme gruvbox-material

" Ativar a realocação de parênteses do plugin Rainbow.
let g:rainbow_active = 1

" --- Configurações Go ---
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1

" --- Configurações CoC ---
" Instale o LSP para Go e Java. 
" Após salvar e fechar o Vim, ao reabrir, execute os comandos:
" :CocInstall coc-go
" :CocInstall coc-java
let g:coc_global_extensions = ['coc-go', 'coc-java']

" Atalho para abrir o terminal com a tecla F1
nnoremap <F1> :belowright terminal<CR>
