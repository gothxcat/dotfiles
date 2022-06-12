" Plugins
call plug#begin()

if $TERM != "linux"
	Plug 'catppuccin/nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
endif

Plug 'bfrg/vim-cpp-modern'
Plug 'lervag/vimtex'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'preservim/nerdcommenter'
Plug 'vimwiki/vimwiki'

call plug#end()

filetype plugin indent on

" Themes
if $TERM != "linux"
	colorscheme catppuccin	
	set background=dark

    "" Airline
    let g:airline_symbols_ascii=1
    let g:airline_theme='base16'
else
    colorscheme default
endif

" NERD Commenter
let g:NERDCustomDelimiters = {
    \ 'asm': { 'left': '/*', 'right': '*/' }
\ }

" VimTeX
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'tectonic'

" Vimwiki
let g:vimwiki_list = [{
    \ 'path': '~/Vimwiki',
    \ 'template_path': '~/Vimwiki/templates',
    \ 'template_default': 'default',
    \ 'template_ext': '.html',
    \ 'path_html': '~/Vimwiki/html'}
\ ]

" Graphical configuration
syntax on
set number
set linebreak
set showbreak=+++
set textwidth=100
set cursorline
set ttimeoutlen=25

" Search
set hlsearch
set smartcase
set ignorecase
set incsearch

" Indentation
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=-1

" Input
set undolevels=1000
set backspace=indent,eol,start
set wildmenu
set wildmode=list:longest
set mouse=a

" Wrap cursor
set whichwrap+=<,h
set whichwrap+=>,l
set whichwrap+=[,]

" Shared clipboard
set clipboard+=unnamedplus

" File types
autocmd FileType asm setlocal tabstop=8 shiftwidth=8 noexpandtab

" Bindings

"" leader - \
let maplocalleader = "\\"

"" INSERT - ctrl-z - undo
imap <silent> <C-z> <C-o>:u<CR>

"" INSERT - ctrl-left/right - skip word forwards/backwards
imap <silent> ^[[1;5D^ <C-o>b<CR>
imap <silent> ^[[1;5C^ <C-o>w<CR>

"" INSERT - esc - escape terminal
tnoremap <Esc> <C-\><C-n>

"" FileType tex - NORMAL - leader-lw - write and compile LaTeX
autocmd FileType tex nmap <Leader>lw :w <bar> :VimtexCompile<CR>

"" FileType tex - INSERT - F2 - write and compile LaTeX
autocmd FileType tex imap <F2> <C-o>:w <bar> :VimtexCompile<CR>

"" NORMAL - leader-v - open file tree
nnoremap <Leader>v <cmd>CHADopen<cr>
