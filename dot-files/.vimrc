set nocompatible  " be iMproved
filetype off      " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'klen/python-mode'
Bundle 'vim-scripts/pep8'
Bundle 'vim-scripts/mru.vim'
" Tagbar 
" depends on exuberant ctags:
" brew install ctags-exuberant
Bundle 'majutsushi/tagbar'

Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'wincent/Command-T'
"Bundle 'FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/ack.vim'
Bundle 'L9'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Zenburn'
Bundle 'altercation/vim-colors-solarized'
Bundle 'moll/vim-node'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'groenewege/vim-less'
filetype plugin indent on

" on .vimrc file save auto source
autocmd! bufwritepost .vimrc source %

" better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" simpler window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" simpler tab navigation
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" easier indenting of block
vnoremap < <gv
vnoremap > >gv

" Make search case insensitive
set hlsearch
nnoremap <silent> <C-l> :nohl<CR><C-1>
set incsearch
set ignorecase
set smartcase

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Settings for ctrlp
let g:ctrlp_max_height = 30
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


syntax on
set background=dark
colorscheme molokai

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd Filetype python match Excess /\%80v.*/
    autocmd Filetype python set nowrap
augroup END

map <F2> :NERDTreeToggle<CR>
" Tagbar window
nmap <F8> :TagbarToggle<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on
set autoindent

set encoding=utf-8
set scrolloff=3

set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2  " ensures status bar shows
set relativenumber
set number                  " absolute nmbr on current line
" set undofile  " don't want persistant undos
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85   not needed as something discolors from col 80

" folding w/ py bias
set foldmethod=indent
set foldlevel=99
set foldnestmax=1

nnoremap ; :
au FocusLost * :wa

" Macros are like anonymous functions

" Leader: usr-specified customisations, kind of namespace
let mapleader = ","  " dflt \

" strip all trailing whitespace in curr file:
nnoremap ,W : %s/\s\+$//<crw>:let @/=''<CR>
nnoremap ,a : Ack

inoremap jj <ESC>  " insert mode

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" python-mode
let g:pymode_lint = 1
let g:pymode_syntax = 1
let g:pymode_rope = 0   " disable for Jedi-vim

" Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>
