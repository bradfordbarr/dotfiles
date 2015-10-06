" Better safe than sorry.
set nocompatible

" Keep turdfiles in one place.
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Set my leader key to space.
let mapleader="\<Space>"

" Don't use F1 for help.
nnoremap <F1> <nop>

" Basic file editing settings.
set autoindent
filetype plugin indent on
syntax on
set encoding=utf-8
set backspace=indent,eol,start

" Shell like file completion.
set wildmode=longest,list

" Search/grep settings.
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

" 2 space tabbing.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround

" Show me the 80 column mark.
set colorcolumn=80

" Highlight the current line
set cursorline

" Some line number stuff.
set relativenumber
set number

" Honor modeline configs.
set modeline
set modelines=5

" Print whitespace.
set list
set listchars=eol:¬,tab:\ »,trail:·

" Enable mouse usage.
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Little bit of font config.
" (I'll probably never use macvim)
if has('gui_running')
  set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h14
endif

" Use pathogen to get some packages.
execute pathogen#infect()

" Configure colorscheme.
set background=dark
colorscheme gruvbox

" Airline config.
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_b = '%{airline#extensions#branch#get_head()}'
let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#:%4v'
let g:airline#extensions#whitespace#enabled = 0
