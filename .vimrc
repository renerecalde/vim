filetype plugin on
syntax on

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

set number

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

