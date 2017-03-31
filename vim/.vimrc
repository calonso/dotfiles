set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'myusuf3/numbers.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'janko-m/vim-test'
Plugin 'davb5/wombat256dave'
Plugin 'Shougo/neocomplete'

call vundle#end()
filetype plugin indent on

syntax on
set encoding=utf-8
set showcmd
colorscheme wombat256dave
set incsearch
set hlsearch
set splitbelow
set hidden
set confirm

"" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set list
" set listchars=space:·,eol:¬

"" NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1

"" AirLine
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1

"" Ctrlp
map <C-t> :CtrlP<CR>

"" Test
map <leader>t :TestNearest<CR>
map <leader>T :TestFile<CR>
map <leader>l :TestLast<CR>

"" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
