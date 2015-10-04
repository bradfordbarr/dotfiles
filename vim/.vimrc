" Better safe than sorry.
set nocompatible

" Use pathogen to get some packages.
execute pathogen#infect()

" Keep turdfiles in one place.
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Set my leader key to space.
let mapleader="\<Space>"

" Basic file editing settings.
set autoindent
filetype plugin indent on
syntax on
set encoding=utf-8
set backspace=indent,eol,start

" 2 space tabbing.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Show me the 80 column mark.
set colorcolumn=80

" Honor modeline configs.
set modeline
set modelines=5

" Configure colorscheme.
set background=dark
colorscheme gruvbox

" Little bit of font config.
" (I'll probably never use macvim)
if has('gui_running')
  set guifont=Hack:h18
endif

" Airline config.
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_b = airline#util#wrap(airline#extensions#branch#get_head(),0)
let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#:%3v'

" Some line number stuff.
set relativenumber
set number
