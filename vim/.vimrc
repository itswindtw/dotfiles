set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'

Plug 'chriskempson/base16-vim'
Plug 'sjl/badwolf'
Plug 'tomasr/molokai'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'

Plug 'sheerun/vim-polyglot'
" Plug 'posva/vim-vue'
" Plug 'JuliaEditorSupport/julia-vim'
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
nnoremap <leader><space> :nohlsearch<CR>

set nobackup
set noswapfile

set showcmd
set showmode
set visualbell
set autoread
set wildmenu
set lazyredraw

syntax enable
set ruler
set number
set cursorline

set wrap
set linebreak
set nolist
set splitright

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za

" set background=dark
" let base16colorspace=256
" colorscheme base16-twilight
" colorscheme badwolf
colorscheme molokai

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
nnoremap j gj
nnoremap k gk
nnoremap <leader>s :mksession<CR>

" NERDTree
noremap <F3> :NERDTreeToggle<CR>

" vim-airline
let g:airline_theme = 'base16'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_html_tidy_ignore_errors = [ '<input> proprietary attribute "' ]

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" OCaml, Merlin, ocp-indent
" let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"
" let g:syntastic_ocaml_checkers = ['merlin']
" set rtp^="/Users/itswindtw/.opam/system/share/ocp-indent/vim"
" set rtp^="/Users/itswindtw/.opam/4.02.3+buckle-master/share/ocp-indent/vim"

" Elm
" let g:polyglot_disabled = ['elm']

" ctrlp
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_user_command = ['.git', 'cd %s; git ls-files -co --exclude-standard']

