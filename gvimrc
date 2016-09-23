set bg=light

if has("mac")
    set guifont=Menlo:h12
    color macvim
    hi ColorColumn guibg=#E6E6E6
endif

set colorcolumn=0

set linespace=2
set guioptions-=r
set guioptions-=L

" Disable bell
autocmd! GUIEnter * set vb t_vb=
