



"
" Set wrap
set wrap
" Relative number
set rnu


" Desarrollo asistido por ia
set rtp+=~/tabnine-vim
"
" Configuracíon default
set number

" Config vim-ariline
set laststatus=2
let g:airline_theme='luna'

" Config pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on


" Config nerdthree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif



" Config tagbar
nmap <F8> :TagbarToggle<CR>


" Config ctags
let g:Tlst_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'


" Config theme
colorscheme base16-default-dark
" colorscheme blackboard 
" colorscheme desert 
set termguicolors


" Config taglist
nmap <F7> :TlistToggle<CR>

" Config spell
set spell
setlocal spell spelllang=es
set nospell

" Config rst
" set shell /bin/sh

