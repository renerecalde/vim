
" Set css plugin
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END


" Set texwith
set textwidth=79
" wrap
set wrap

" rnu
set rnu

" Turn off modelines
set modelines=0

" Set color
syntax on

colorscheme industry



" Set shell
set shell=/bin/bash


"Sqlutilities confi
vmap <silent>sf        <Plug>SQLU_Formatter<CR>
nmap <silent>scl       <Plug>SQLU_CreateColumnList<CR>
nmap <silent>scd       <Plug>SQLU_GetColumnDef<CR>
nmap <silent>scdt      <Plug>SQLU_GetColumnDataType<CR>
nmap <silent>scp       <Plug>SQLU_CreateProcedure<CR>



" Gundo config
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
nnoremap <F5> :GundoToggle<CR>



" Supertab config

" Vim-Supertab Configuración
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Tagbar config

" Elixir Tagbar Configuración
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
    \ }

" Tagbar config
nmap <F8> :TagbarToggle<CR>

" Encondig
set encoding=utf8

" Config NerdThree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Config line number
set number

" Config pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on


" config spell
set spell spelllang=es
set nospell

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif
