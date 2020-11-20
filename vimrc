" Hay que bajar el plug.vim para poder isntalar los plugins como sigue abajo.
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Instalo plugins

call plug#begin()
	" Muestra el tree de los archivos desde donde estoy parado
	Plug 'preservim/NERDTree'
	" Me deja buscar archivo como el ctrl+p de vvscode
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
    " Barra con colers ( mas copado )
    Plug 'itchyny/lightline.vim'
    " Comentador de codigo por bloque .. Lo uso mucho
    Plug 'preservim/nerdcommenter'
    " Colores en brackets
    Plug 'frazrepo/vim-rainbow'
    " PHP
    Plug 'StanAngeloff/php.vim'
    " Surround para encerrar codigo
    Plug 'tpope/vim-surround'
    " Auto pai pra parentesis y comillas, etc.
    Plug 'jiangmiao/auto-pairs'
	" Aca lo necesario para autocomplete Hay que isntalar Este modulo de
	" neovim  sudo pip3 install neovim
    " Plug 'Shougo/deoplete.nvim'
    " Plug 'roxma/nvim-yarp'
    " Plug 'roxma/vim-hug-neovim-rpc'
	" Plug 'carlitux/deoplete-ternjs'
	" Plug 'ternjs/tern_for_vim'
    " Hago bonito el codigo
    " Hay que isntalar prettire npm install --save-dev --save-exact prettier
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript',  'php', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
	" GOTO DEFINITION REACT
	Plug 'Ivo-Donchev/vim-react-goto-definition'
	" Colores en lso archivos css
	Plug 'ap/vim-css-color'

	" cambio deoplete por coc  NODEJS DEPENDENCE curl -sL install-node.now.sh/lts | bash
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Or build from source code by using yarn: https://yarnpkg.com
	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()

" CONFIGURACIONES
" ===============
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
"set expandtab       " Expand TABs to spaces

set laststatus=2 " Configuracion de la barra de estado de colores
set nu " Seteo los numeros de linea siempre
set cursorline
let mapleader="," " Cambio el <leader> key porque no se cual es el mio.. :(

" Mapeo de teclas
" Ctrl P Abre la busqueda de archivos
nmap <C-p> :Files <CR>
" Ctrl B Abre el menu tree de folder y archivos 
nmap <C-b> :NERDTreeToggle <CR>
" Ctrl Shit I acomoda Automaticamente el codigo completo
nmap <C-S-i> :Prettier <CR>
" Ctrl k+c para comentar
nmap <C-k-c> :NERDCommenterComment <CR>
" Leader , para abrir la definicion
nmap <leader>D :call ReactGotoDef()<CR>
" Agrego divisor de pantalla horizontal
nmap <C-w><C-h> :split<CR>
" Agrego el Shift + XX para grabar esa pantalla
nmap <S-W><S-W> :w <CR>
" Agrego ctrl tab para navegar entre buffer
nmap <C-TAB> :bn <CR>
" Agrego ctrl tab para navegar entre buffer
nmap <S-TAB> :bp <CR>
" Revviso si existe alguna configuración para la carpeta en si
let b:thisdir=expand("%:p:h")
let b:vim=b:thisdir."/.vim"
if (filereadable(b:vim))
    execute "source ".b:vim
endif


" Activo el auto pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
" Activo el autocomplete
let g:deoplete#enable_at_startup = 1

" Configuracion por defecto del nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Activo los colores del CSS
let g:cssColorVimDoNotMessMyUpdatetime = 1

colorscheme wombat256mod

" Configuracion de COC 
execute "source ~/.vim/config/cocConfig.vim"
execute "source ~/.vim/config/cocSnippets.vim"

