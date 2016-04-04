syntax enable

set tabstop=4
set softtabstop=4
set expandtab 	" tabs are spaces
set backspace=2 " make backspace work like most other apps

set number	" show line numbers
set showcmd	" show command in bottom bar

set wildmenu		" visual autocomplete for command menu
set showmatch		" show highligth matching ()[]

set incsearch		" search as characters are entered
set hlsearch		" highlight matches

let mapleader=","	" leader is comma
set background=dark

" delete highlighting after search
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line ( no linebreak lines )
 nnoremap j gj
 nnoremap k gk

" move beginning and end of line
nnoremap B ^
nnoremap E $


"hightlight last inserted text
nnoremap gV `[v`]

" jk is escape
inoremap jk <esc>

" save session
nnoremap <leader>s :mksession<CR>

" nerdtree shortcut
nnoremap <leader>n :NERDTreeToggle<CR>

" switch window rempa
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" CtrlP Settings
let g:ctrlp_match_window = 'bottom,order:ttp'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'sjl/gundo.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Git Nerdtree Plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "?",
    \ "Staged"    : "?",
    \ "Untracked" : "?",
    \ "Renamed"   : "?",
    \ "Unmerged"  : "-",
    \ "Deleted"   : "?",
    \ "Dirty"     : "?",
    \ "Clean"     : "??",
    \ "Unknown"   : "?"
    \ }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()
