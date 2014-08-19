set nocompatible
set number
set ruler
set showcmd
set nohlsearch
set scrolljump=7
set scrolloff=7
set novisualbell
set t_vb=
"set mouse=a
set mousemodel=popup
set termencoding=utf-8
set hidden
set ch=1
set mousehide
set autoindent
syntax on
set backspace=indent,eol,start whichwrap+=<,>,[,]
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set fo+=cr
let g:netrw_list_hide= '.*\.swp$,.*\.beam,.*\.Pbeam'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam,*.Pbeam
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:airline_symbols = {}
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_symbols.branch = '' "'⎇ '
"let g:airline_theme='jellybeans'
"let g:airline_theme='dark'
"let g:airline_theme='solarized'
let g:airline_theme='laederon'

set nobackup
set nowb
set noswapfile
nmap <Space> <PageDown>
map <S-Insert> <MiddleMouse>
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>
map <F2> :bp<cr>
vmap <F2> <esc>:bp<cr>i
imap <F2> <esc>:bp<cr>i
map <F3> :bn<cr>
vmap <F3> <esc>:bn<cr>i
imap <F3> <esc>:bn<cr>i
map <F10> :bd<cr>
vmap <F10> <esc>:bd<cr>
imap <F10> <esc>:bd<cr>
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>
imap [ []<LEFT>
imap {<CR> {<CR>}<Esc>O

execute pathogen#infect()
syntax on
filetype plugin indent on
nmap <silent> <F8> :NERDTreeToggle<CR>

set runtimepath^=~/.vim/bundle/vim-erlang-runtime/
set runtimepath+=~/.vim/bundle/vim-erlang-tags/
set runtimepath+=~/.vim/bundle/powerline/
set runtimepath+=~/.vim/bundle/ctrlp.vim
"set runtimepath+=~/.vim/bundle/vimerl/

if has("gui_running")
    let g:bufferline_echo = 0

    colorscheme iawriter
    set linespace=5
    set background=light
    set guifont=Cousine:h12

    set guioptions+=LlRrb
    set guioptions-=LlRrb
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guifont=Monospace\ 12

    "GUI tab menu to look like Console tab menu
    "set guioptions-=e
    "set guioptions=ac

    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

    set guiheadroom=0
    map <silent> <F11>
        \    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
else
    "colorscheme sublime
    set background=dark
    "set background=light
    "colorscheme solarized
endif
setlocal statusline=
