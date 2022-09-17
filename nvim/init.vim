:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8
:set guifont=DroidSansMono\ Nerd\ Font\ 11
:set statusline=%{FugitiveStatusline()}
let g:coc_disable_startup_warning = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
call plug#begin('~/.config/nvim/plug')

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'

" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
Plug 'mhartington/oceanic-next'  " colorscheme OceanicNext
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
 
call plug#end()

:colorscheme gruvbox

nnoremap <C-p> :NERDTree<CR>
nnoremap <C-t> :TerminalSplit zsh<CR>
