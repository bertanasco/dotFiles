set nocompatible

" plugins
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

set tabstop=4  
set shiftwidth=4
set softtabstop=4
set expandtab
set complete-=i

"enable line numbers 
set nu
"omni completion config
set omnifunc=syntaxcomplete#Complete

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
colorscheme rails
"colorscheme noctu

"fix background color
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


