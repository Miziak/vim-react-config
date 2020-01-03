" set gui options if runnibg in gui
if has('nvim') && exists('g:GuiLoaded')
  set guifont=Fira\ Code:h10
  set notermguicolors
endif

" set colors when it is possible
if has("termguicolors")
    set termguicolors
endif

" enable syntax highlighting
syntax enable
" colorscheme vim-monokai-tasty
colorscheme OceanicNext

" highlight line under cursor
set cursorline

" indentation setting
filetype plugin indent on
set autoindent
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" file encoding
set enc=utf-8
set fileencoding=utf-8
set fileencodings=utf8

" set line numbering to relative
set number
set relativenumber

" open splits on right
set splitright

" disable mouse
set mouse=

" indicate 100 column to linebreak
set colorcolumn=100

" some settings required by coc vim
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300 
set shortmess+=c
set signcolumn=yes

" set leader key
let mapleader = ','
let maplocalleader = ','

" possible fix for long styled-components files
" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
