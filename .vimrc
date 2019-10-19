set autoindent
syntax on

"print number of lines
set number

set noexpandtab
set softtabstop=0
set shiftwidth=3
set encoding=utf-8
set tabstop=4
"allow to use alias
"set shellcmdflag=-ic

"for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
