set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fireplace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Common settings
syntax on

let mapleader = ","
let g:mapleader = ","

set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

set ignorecase
set whichwrap+=<,>,h,l

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set backspace=2
set softtabstop=4
set autoindent
set number
set hlsearch
set ignorecase
set backspace=2
set laststatus=2
set hidden
set cursorline

set background=light

try
    colorscheme default
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Toggle list on and off
map <leader>ll :setlocal list!<cr>

" Toggle line wrap on and off
map <leader>ww :setlocal wrap!<cr>

" Toggle spell checking
map <leader>ss :setlocal spell!<cr>

" Change to the directory of the currently open file with the <leader>cd
" combination
map <leader>cd :cd %:p:h<cr>

" Disable all bells
se vb t_vb=

hi SpellBad cterm=underline

" Remove trailing whitespaces on save
au BufWritePre * :%s/\s\+$//e

" Keep one line above/below the cursor while scrolling
set scrolloff=1

" Set font in GUI
set guifont=PragmataPro:h12

" Disable right scrollbar
set guioptions-=r

" Disable left scrollbar
set guioptions-=L

" The below mapping will change the behavior of the <Enter> key when the popup
" menu is visible. In that case the Enter key will simply select the highlighted
" menu item, just as <C-Y> does.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "<C-g>u\<CR>"

" Plugins settings
let g:jedi#auto_close_doc = 1

let delimitMate_expand_cr = 1
let delimitMate_nesting_quotes = ['"','`']
au FileType python let b:delimitMate_nesting_quotes = ["'", "\""]
au FileType python,clojure setlocal completeopt-=preview
au FileType clojure let b:delimitMate_quotes = "\""

let g:airline_left_sep=''
let g:airline_right_sep=''

py import sys; sys.path.append('/Users/andrey/miniconda3/lib/python3.5/site-packages')
