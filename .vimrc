
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
"Airline themes
Plug 'vim-airline/vim-airline-themes'
"Fugitive, git status and tools
Plug 'tpope/vim-fugitive'

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
silent! colorscheme solarized

"turn on matchit
runtime macros/matchit.vim

"set omnifunc=syntaxcomplete#Complete
"au BufNewFile,BufRead,BufEnter *.cpp,*.h set omnifunc=omni#cpp#complete#Main

"ignore build directories when 'find'ing or 'ctrl-p'ing
set wildignore+=*/build/*

"cindent options, make sure labels like public: and protected: aren't indented
set cinoptions+=,g0

"let g:airline_powerline_fonts = 1

"Spell check setup
"press F5 to toggle spell check on and off
map <F5> :setlocal spell!<CR>

"Highlight mispelled words. In this case underline them. Uncomment to color
"mispelled words red.
hi SpellBad cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline "ctermfg=203 guifg=#ff5f5f
hi SpeellCap cterm=underline "ctermfg=203 guifg=#ff5f5f
