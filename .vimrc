"Confiuro números de lineas
set number


"Configuro pathogen
execute pathogen#infect()

filetype plugin indent on
syntax on

"Configuración solarized
"syntax enable
"set background=light
"colorscheme autumn

"Configuración ultisnips
let g:UltiSnipsEditSplit="vertical"

"Configuración neerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Configuración de indent guides
set ts=2 sw=2 et
let g:indent_guides_start_level = 2

"Configuración airline

"Configuración de la tagbar
nmap <F8> :TagbarToggle<CR
"Configuración de la tagbar
nmap <F8> :TagbarToggle<CR>

"Configuración del vim multicursor plugin
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


" Spell
set spelllang=es
" set spell


" Bubble single lines
nmap <C-Up> ddkp
nmap <C-Down> ddp

command! Status echo "All system are go!"
