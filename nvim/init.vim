" Vim Plug
call plug#begin('~/.local/share/nvim/plugged')

" Neomake
Plug 'https://github.com/neomake/neomake'

" NeoSnippets
Plug 'https://github.com/scrooloose/nerdcommenter'

" NerdTree
Plug 'https://github.com/scrooloose/nerdtree'

" Git Flags for Nerd Tree
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'

call plug#end()

syntax on
filetype plugin indent on

" Open NerdTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close Vim if NerdTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" C Comments
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Indent options
set tabstop=4
set shiftwidth=4
set softtabstop=0 expandtab
set autoindent
set smarttab
set number

" Vim Airline
set laststatus=2
set ttimeoutlen=50 

" Color schemes
" Using Molokai with default terminal background
highlight NonText ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
highlight LineNr ctermfg=white ctermbg=NONE
