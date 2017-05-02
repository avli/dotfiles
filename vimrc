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
Plugin 'rust-lang/rust.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fireplace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'rizzatti/dash.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mileszs/ack.vim'

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
set ruler
set hidden
set cursorline

try
    colorscheme solarized
    hi CursorLineNr ctermbg=0
    call togglebg#map("<leader>bg")
    " The color used for parentheses by default is too aggressive,
    " it's better to change it to something more accessible
    hi Delimiter ctermfg=12
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
set guifont=Source\ Code\ Pro:h12

" Turn on ligatures (for fonts that support them)
if has('gui_running')
    set macligatures
end

" Slightly increase the space between lines
set linespace=2

" Disable right scrollbar
set guioptions-=r

" Disable left scrollbar
set guioptions-=L

" 80 and 120 column guides
set colorcolumn=80,120

" Set symbol to indicate whitespaces
set listchars=eol:¬,tab:>-

" Russian language support
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" Switch to the Russian keymap by pressing F9
inoremap <F9> <c-^>
cnoremap <F9> <c-^>
nnoremap <F9> i<c-^><ESC>

" Set working directory to the current file by <leader>cd
nnoremap <leader>cd :cd %:p:h<CR>

" Spell both English and Russian languages
set spelllang=en_us,ru_ru

" Copy to the macOS buffer with <leader>yy and paste with <leader>P
if has('mac')
    map <leader>yy :.w !pbcopy<CR><CR>
    map <leader>P :r !pbpaste<CR>
endif

" Plugins settings
let g:jedi#auto_close_doc = 1

let delimitMate_expand_cr = 1
let delimitMate_nesting_quotes = ['"','`']
au FileType python let b:delimitMate_nesting_quotes = ["'", "\""]
au FileType python,clojure setlocal completeopt-=preview
au FileType clojure let b:delimitMate_quotes = "\""

" Search a word under the cursor in Dash by pressing <leader>h
map <leader>h :Dash<cr>

