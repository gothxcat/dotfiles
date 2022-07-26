" FileType tex
" VimTeX
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'tectonic'

" Bindings
"" NORMAL - Leader-lw - Write and compile LaTeX
nmap <Leader>lw :w <bar> :VimtexCompile<CR>

"" INSERT - F2 - Write and compile LaTeX
imap <F2> <C-o>:w <bar> :VimtexCompile<CR>
