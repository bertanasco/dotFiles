set nocompatible

" plugins
call pathogen#infect()
"generate helptags
call pathogen#helptags()
filetype plugin on
filetype plugin indent on
filetype indent on

syntax on

"Break the habit of reaching for the arrow keys!!!
"Disable arrow keys 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"enable back space in 
set backspace=indent,eol,start

set showmatch
set smarttab
set complete-=i

"enable line numbers 
set nu

"color scheme
set background=dark
"solarized options 
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
