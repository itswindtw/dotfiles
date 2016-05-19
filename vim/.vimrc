set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'scrooloose/syntastic'
call plug#end()

filetype plugin indent on
syntax on

set showcmd
set showmode
set visualbell
set autoread
set noswapfile
set nobackup
set nowb

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set wrap
set linebreak
set nolist

set number
set cursorline

set background=dark
colorscheme base16-twilight

set backspace=indent,eol,start
set clipboard+=unnamedplus

" Syntastic[TODO]
