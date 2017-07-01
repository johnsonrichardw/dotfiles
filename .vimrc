
"VIM-Plug (from https://github.com/junegunn/vim-plug)
call plug#begin()

"Sensible VIM, quick tweaks
Plug 'tpope/vim-sensible'
"Solarized color scheme
Plug 'altercation/vim-colors-solarized'
"EasyMotion plugin (<Leader><Leader>motion)
Plug 'easymotion/vim-easymotion'
"Ctrl-P fuzzy find
Plug 'kien/ctrlp.vim'
"Airline status bar
Plug 'vim-airline/vim-airline'

call plug#end()

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set colorcolumn=80

"Set up custom tabs in Python 
au BufRead,BufNewFile *.py set expandtab | set tabstop=4 | set softtabstop=4 | set shiftwidth=4

"Solarized color scheme
set background=dark
colorscheme solarized

"turn on matchit
runtime macros/matchit.vim


