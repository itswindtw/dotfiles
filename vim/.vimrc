set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'
Plug 'posva/vim-vue'
" Plug 'elixir-lang/vim-elixir'
" Plug 'ElmCast/elm-vim'
call plug#end()

filetype plugin indent on

set backspace=indent,eol,start

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set smarttab

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set noswapfile

set showmode
set visualbell
set autoread

syntax on
set ruler
set number
set cursorline

set wrap
set linebreak
set nolist

set background=dark
let base16colorspace=256
colorscheme base16-twilight

set clipboard=unnamed,unnamedplus

" lifesaver
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" NERDTree
noremap <F3> :NERDTreeToggle<CR>

" vim-airline
let g:airline_theme = 'powerlineish'

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
