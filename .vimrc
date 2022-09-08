"set textwidth=80 "sets a bound for how long a line can be
set nowrap
" set colorcolumn=+1 "makes a colored column appear at textwidth to show bound
set tabstop=4 "sets tab width
set so=7 "scrolloff, makes the cursor remain somewhat centered in the screen

filetype on
filetype plugin on
filetype indent on
syntax on

set number
set relativenumber

set shiftwidth=4

set ignorecase
set smartcase "first option makes it ignore case, 2nd stops ignoring if you type an uppercase

set incsearch "search works for incremental characters while you type them rather than at the end
set hlsearch "highlights all results during search

set history=500

set showmatch " when you close a brace it temporarily highlights/jumps back to opening to show you where it is?

set showcmd "show the comand you're inserting e.g. 2j while you're inserting it

set wildmenu "enables tab completion like bash does it with files
set wildmode=list:longest "makes it so when multiple options are available it completes till longest common prefix
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx "ignore these filetypes when completing

call plug#begin()

Plug 'preservim/NERDTree'

call plug#end()

inoremap jj <esc>
