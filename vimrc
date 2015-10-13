"no compatible for vi
set nocompatible
" about sytax 
syntax enable
syntax on

"colorscheme desert
 
set tabstop=4 "a tab eq 4 space
set softtabstop=4 "backspace for tab
set shiftwidth=4 "size of indent
set cindent "auto indent for c files
set autoindent
set smartindent
set expandtab "replace tab with spaces
set backspace=indent,eol,start 

set nowrap "wrap long lines
set matchpairs=(:),{:},[:],<:>
" VIM UI
set showcmd
set ruler
set mouse=a
set mousehide

map Q gq
" inoremap <C-U> <C-G>u<C-U>

" Searching
set incsearch
set showmatch
set hlsearch
set smartcase

" File type 
let &termencoding=&encoding
set encoding=utf-8
set fileencoding=utf-8


" Easy indent for code blocks
nmap <tab>  v>
nmap <c-tab>    v>
nmap <s-tab>    v<
vmap <tab>  >gv
vmap <c-tab>    >gv
vmap <s-tab>    <gv
 
"""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundles here!
" left win explore
Bundle 'scrooloose/nerdtree' 
"right tag
Bundle 'majutsushi/tagbar'   
"bottom line
Bundle 'bling/vim-airline'
" Bundle 'Lokaltog/vim-powerline'
"right tag
" Bundle 'taglist.vim'
"todo list
Bundle 'TaskList.vim'       
Bundle 'myusuf3/numbers.vim'
"Bundle 'Valloric/YouCompleteMe'
filetype plugin indent on
"
" :BundleList           - list configured bundles
" :BundleInstall(!)     - install(update) bundles
" :BundleSearch(!) foo  - search for foo
" :BundleClean(!)       - removal of unused bundles
" see :h vundle for details
"


" NerdTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeChDirMode = 0
let NERDTreeQuitOnOpen = 1
let NERDTreeMouseMode = 2
let NERDTreeShowHidden = 1
let NERDTreeKeepTreeInNewTab = 1
let g:NERDTreeWinSize = 20
let g:nerdtree_tabs_open_on_gui_startup = 0

" tagbar
let g:tagbar_width = 20
let g:tagbar_singleclick = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_ctags_bin='/usr/bin/ctags'
nnoremap <leader>tb :TagbarToggle<CR>

" numbers
nnoremap <F3> :NumbersToggle<CR>

" powerline
" let t_Co=256
" let g:Powerline_symbols = 'unicode'
" let g:Powerline_colorscheme = 'solarized256'

" tasklist
nmap <silent> <leader>tl <Plug>TaskList
