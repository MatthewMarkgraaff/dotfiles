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
Plugin 'airblade/vim-rooter'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'matthewMarkgraaff/vim-react-es6-snippets'

" Add key shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

syntax on
color dracula
set t_Co=256

" vim-javascript syntax highlighting
let g:javascript_plugin_jsdoc = 1

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set autochdir

imap jk <esc>
imap kj <esc>

"Bash like auto path completion
set wildmode=longest,list,full
set wildmenu

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

call vundle#end()
filetype plugin indent on
