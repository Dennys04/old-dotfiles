filetype plugin on

" Habilitar la sintaxis del vim
syntax enable

" Muestra numeros para una navegacion mas facil
set number
" Muestra los numeros relativos a la posicion del puntero
set relativenumber
" Separa el ancho de los numeros 'Mejora visual'
set numberwidth=1

" Habilita el mouse dentro del editor
set mouse=a

" Poder tener un clipboard dentro y fuera del editor
set clipboard=unnamed

" Uso de caracteres especiales
set encoding=utf-8

set tabstop=4
set expandtab
set smartindent
set shiftwidth=4

" Muestra el conjunto de los brackets, parentesis ...
set showmatch

" No muestra el modo en el que estamos tales como visual mode, insert modo...
set noshowmode

" No genera archivos de intercambios
set noswapfile
" No backup 
set nobackup

" No agrupa las lineas en el editor
set nowrap


call plug#begin('~/.vim/plugged')

"Tema
Plug 'tyrannicaltoucan/vim-quantum'

"Navegacion
Plug ('easymotion/vim-easymotion')
Plug ('scrooloose/nerdtree')
Plug ('christoomey/vim-tmux-navigator')

"Visual
Plug ('vim-airline/vim-airline')
Plug ('vim-airline/vim-airline-themes')

"Integration
Plug ('jiangmiao/auto-pairs')
Plug ('tpope/vim-commentary')
Plug ('mhinz/vim-signify')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug ('tpope/vim-fugitive')


call plug#end()

"Quantum Theme Configuration
set background=dark
set termguicolors
let g:quatum_black=1

"To italicize the comments:
let g:quatum_italics=1

" Airline Quantum
let g:airlin_theme='quantum'

colorscheme quantum

"Signify Configuration
" default updatetime 4000ms is not good for async update
set updatetime=100


" Keybindings
" Map Leader

let mapleader = " "

"Quick Save
nmap <Leader>w  :w<CR>

"Save and quit file
nmap <Leader>wq :wq<CR>

"Quit File
nmap <Leader>q  :q<CR>

"Forced quit file
nmap <Leader>qq :q!<CR>



" Source init.vim
nmap <F5>   :source %<CR>

" PlugInstall
nmap <F6>   :PlugInstall<CR>

"Abrir menu de navegacion NERDTREE 
nmap <F2>   :NERDTreeFind<CR>

"NERDTREE Se abre automaticamente al iniciar Nvim
"autocmd vimenter * NERDTree

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


" Buscar palabras dentro de la pagina activa
nmap <Leader>s  <Plug>(easymotion-s2)

" Abrir Terminal
nmap <c-t>  :split<CR>:ter<CR>

" Anular las teclas
nnoremap <Up>       <Nop>
nnoremap <Down>     <Nop>
nnoremap <Left>     <Nop>
nnoremap <Right>    <Nop>
nnoremap <c-b>      <Nop>

" Ajustar el tamaño de los split
nnoremap <Right>    :vertical resize +2<CR>
nnoremap <Left>     :vertical resize -2<CR>
nnoremap <Down>     :resize +2<CR>
nnoremap <Up>       :resize -2<CR>


" BUFFERS
nmap <c-Left>   :bp<CR>
nmap <c-Right>  :bn<CR>
nmap <c-b>      :bd %<CR>

"Configuration the extensions to commentary
autocmd FileType xml,html setlocal commentstring=<!--%s-->
autocmd FileType sh,python,text setlocal commentstring=#%s
autocmd FileType javascript,typescript setlocal commentstring=//%s
