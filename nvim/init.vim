" Plugins
call plug#begin()

if $TERM != "linux"
	Plug 'catppuccin/nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
endif

Plug 'preservim/nerdcommenter'
Plug 'bfrg/vim-cpp-modern'
Plug 'mcchrish/nnn.vim'
Plug 'vimwiki/vimwiki'

call plug#end()

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

" Commenter
filetype plugin on

" Vimwiki
let g:vimwiki_list = [{
    \ 'path': '~/Vimwiki',
    \ 'template_path': '~/Vimwiki/templates',
    \ 'template_default': 'default',
    \ 'template_ext': '.html',
    \ 'path_html': '~/Vimwiki/html'}]

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

" Bindings
"" insert - ctrl-z - undo
imap <silent> <C-z> <C-o>:u<cr>
"" insert - ctrl-left/right - skip word forwards/backwards
imap <silent> ^[[1;5D^ <C-o>b<cr>
imap <silent> ^[[1;5C^ <C-o>w<cr>
