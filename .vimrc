set nocompatible
set hls "set highlighint 

"plugins
call pathogen#infect()
"generate helptags
call pathogen#helptags()
filetype plugin on
filetype plugin indent on
filetype indent on

syntax on
"Fix copy paste from other applications
"[update] this actually breaks snipmate :(
"set paste

"Break the habit of reaching for the arrow keys!!!
"Disable arrow keys 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"enable back space in insert mode
set backspace=indent,eol,start

set showmatch

set tabstop=8 "A tab is 8 spaces"
set shiftwidth=4 
set softtabstop=4
set expandtab   "Always uses spaces instead of tabs
set complete-=i
set shiftround  "Round indent to nearest shiftwidth multiple"

"enable line numbers 
set nu
"omni completion config
set omnifunc=syntaxcomplete#Complete

"change leader key to '"
let mapleader=","

"command + number mapping of tabs
"tab mappings
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-t> :tabnew<CR>
map <D-w> :tabclose<CR>"
"================================================
"P L U G I N S
"===============================================
"NERDTree configs
"autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"color scheme
set background=dark
"solarized options 
set t_Co=256
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"color mango
"colorscheme solarized
"colorscheme rails
"colorscheme noctu
colorscheme kolor
"colorscheme monokai

"fix background color
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

"CNTRP Configs"
"let g:ctrlp_map = '<s-p>' " use shift P instead of ctrl p"
"let g:ctrlp_cmd = 'CtrlP'

"add ctrlp funky to ctrp
let g:ctrlp_extensions = ['funky'] "funky allows ctrlp to pick out function definitions
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>"
