set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'chriskempson/base16-vim'
Plugin 'lambdatoast/elm.vim'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()
filetype plugin indent on

set showcmd
set showmode
set visualbell
set autoread

syntax on

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

set nowrap
set linebreak

set number
set cursorline

set background=dark
let base16colorspace=256
colorscheme base16-twilight

set backspace=indent,eol,start

" Maps Coquille commands to <F2> (Undo), <F3> (Next), <F4> (ToCursor)
au FileType coq call coquille#FNMapping()

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" OCaml - Merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
let g:syntastic_ocaml_checkers = ['merlin']

set rtp^="/Users/itswindtw/.opam/system/share/ocp-indent/vim"

