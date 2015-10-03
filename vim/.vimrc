" Better safe than sorry.
set nocompatible

" Keep turdfiles in one place.
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Set my leader key to space.
let mapleader="\<Space>"

" Basic file editing settings.
filetype plugin indent on
syntax on
set encoding=utf-8
set backspace=indent,eol,start
set ruler

" 2 space tabbing.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Use pathogen to get some packages.
execute pathogen#infect()

" Configure colorscheme.
set background=dark
colorscheme base16-tomorrow

" Little bit of font config.
" (I'll probably never use macvim)
if has('gui_running')
  set guifont=Hack:h18
endif
