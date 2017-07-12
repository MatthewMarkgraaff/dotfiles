set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-bundler'


" Add key shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

syntax on
color dracula
set t_Co=256

" vim-javascript syntax highlighting
let g:javascript_plugin_jsdoc = 1

call vundle#end()
filetype plugin indent on
