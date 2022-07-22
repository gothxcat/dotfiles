" Plugins
call plug#begin()

if $TERM != "linux"
	Plug 'catppuccin/nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
endif

Plug 'bfrg/vim-cpp-modern'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'vimwiki/vimwiki'

call plug#end()

" NERD Commenter
let g:NERDCustomDelimiters = {
    \ 'asm': { 'left': '/*', 'right': '*/' }
\ }

" Vimwiki
let g:vimwiki_list = [{
    \ 'path': '~/Vimwiki',
    \ 'template_path': '~/Vimwiki/templates',
    \ 'template_default': 'default',
    \ 'template_ext': '.html',
    \ 'path_html': '~/Vimwiki/html'}
\ ]

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

" Graphical configuration
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

" Do not autowrap onto the next line
set formatoptions-=t

" Wrap cursor
set whichwrap+=<,h
set whichwrap+=>,l
set whichwrap+=[,]

" Shared clipboard
set clipboard+=unnamedplus

" Bindings
"" Leader = \
let maplocalleader = "\\"

"" INSERT - Ctrl-z - Undo
imap <silent> <C-z> <C-o>:u<CR>

"" INSERT - Ctrl-Left/Right - Skip word forwards/backwards
imap <silent> ^[[1;5D^ <C-o>b<CR>
imap <silent> ^[[1;5C^ <C-o>w<CR>

"" INSERT - esc - Escape terminal
tnoremap <Esc> <C-\><C-n>

"" NORMAL - Leader-v - Open file tree
nnoremap <Leader>v <cmd>CHADopen<cr>
