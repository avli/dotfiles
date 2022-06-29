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
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'junegunn/fzf.vim'

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
set exrc
set mouse=a

try
    "colorscheme wombat256mod
    colorscheme gruvbox
    hi ColorColumn ctermbg=238 guibg=#383838
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

" Open new tab with <leader>t
map <leader>t :tabnew<cr>

" Toggle NERDTree with <leader>e (leader - explore)
map <leader>e :NERDTreeToggle<cr>

" Toggle Tagbar with <leader>t
map <leader>t :TagbarToggle<cr>

" Disable all bells
se vb t_vb=

hi SpellBad cterm=underline

" Remove trailing whitespaces on save
au BufWritePre * :%s/\s\+$//e

" Keep one line above/below the cursor while scrolling
set scrolloff=1

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
"set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

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

" Automatically change the directory to the directory of the opened file
" autocmd BufEnter * silent! lcd %:p:h

" Search a word under the cursor in Dash by pressing <leader>h
map <leader>h :Dash<cr>

" Surround bindings for Django templates,
" see https://code.djangoproject.com/wiki/UsingVimWithDjango
let g:surround_{char2nr("v")} = "{{ \r }}"
let g:surround_{char2nr("{")} = "{{ \r }}"
let g:surround_{char2nr("%")} = "{% \r %}"
let g:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let g:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let g:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let g:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let g:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

" Disable unsecure commands in ".vimrc" and ".exrc"
set secure

" Toggle background with F5
call togglebg#map("<F5>")

let g:syntastic_python_checkers = ["flake8"]

let g:airline_extensions = ['branch', 'tabline']

set rtp+=/usr/local/opt/fzf
