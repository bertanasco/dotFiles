set nocompatible

" plugins
call pathogen#infect()
"generate helptags
call pathogen#helptags()
filetype plugin on
filetype plugin indent on
filetype indent on

syntax on

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
