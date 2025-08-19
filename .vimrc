call plug#begin('~/.vim/plugged')

" Essencial para linting e autocompletar.
" coc.nvim é a base para o Language Server Protocol (LSP).
" O LSP do Go (gopls) melhora o autocompletar, refatoração, e outras funcionalidades.
" Você precisará instalá-lo separadamente com :CocInstall coc-go
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin principal para Go. 
" Inclui sintaxe, linting, e ferramentas como GoImports.
Plug 'fatih/vim-go'

" Gerenciador de arquivos.
" Essencial para navegar pela estrutura de projetos.
Plug 'preservim/nerdtree'

" Ícones para arquivos e diretórios no NERDTree.
" Requer uma Nerd Font para funcionar corretamente.
Plug 'ryanoasis/vim-devicons'

" Tema de cores para o Vim.
" Melhora a legibilidade do código.
" Existem outros temas populares, como 'sainnhe/gruvbox-material' (o que você já usa), 'dracula/vim' ou 'morhetz/gruvbox'.
Plug 'sainnhe/gruvbox-material'

" Destaque de parênteses e chaves correspondentes.
" Ajuda a evitar erros de sintaxe e melhora a legibilidade.
Plug 'luochen1990/rainbow'

" Destaque de espaços em branco e tabulação.
" Evita problemas de formatação.
Plug 'ntpeters/vim-better-whitespace'

 " Substitua a tela inicial do Vim por uma lista customizável dos seus arquivos recentes e sessões de trabalho.
 35 Plug 'mhinz/vim-startify'

call plug#end()

" Atalhos
" Use <F2> para abrir e fechar o NERDTree, mais fácil de alcançar.
noremap <F2> :NERDTreeToggle<CR>

" Formata o código Go automaticamente ao salvar o arquivo.
" Isso usa a ferramenta GoImports que está no plugin fatih/vim-go.
" O comando GoImports organiza os imports e formata o código.
autocmd BufWritePost *.go :silent GoImports

" Configurações gerais
" Exibe os números de linha.
set number

" Use o tema gruvbox-material
colorscheme gruvbox-material
" Configuração para o tema, se desejar.
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_foreground = 'material'

" Ativar a realocação de parênteses do plugin Rainbow.
" Isso destaca parênteses e chaves com cores diferentes para cada nível.
let g:rainbow_active = 1

" Configurações do Go
" Habilita o autoformato do goimports ao salvar.
let g:go_fmt_command = "goimports"
" Habilita a sintaxe e outras funcionalidades do plugin.
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1

" Configurações do CoC
" Use a função de autocompletar do CoC.
" O CoC.nvim precisa de mais configurações para funcionar plenamente.
" Depois de instalar os plugins e reiniciar o Vim, execute :CocInstall coc-go para instalar o LSP do Go.
let g:coc_global_extensions = ['coc-go']
