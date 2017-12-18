set nocompatible

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
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'leafgarland/typescript-vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'flazz/vim-colorschemes'
Plugin 'ayu-theme/ayu-vim'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'morhetz/gruvbox'
Plugin 'mhinz/vim-startify'
Plugin 'Quramy/tsuquyomi'
Plugin 'vim-syntastic/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bdauria/angular-cli.vim'

" Add key shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

syntax on
filetype off

" the looks yo
colorscheme gruvbox

" vim-javascript syntax highlighting
let g:javascript_plugin_jsdoc = 1

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set autochdir

" vim-typescript
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

" angular cli vim
autocmd VimEnter * if globpath('.,..','node_modules/@angular') != '' | call angular_cli#init() | endif

imap jk <esc>
imap kj <esc>

"Bash like auto path completion
set wildmode=longest,list,full
set wildmenu

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

set dir=~/.vim/_swap//

set number

set backup
set backupdir=~/.vim/_backup/,~/tmp,.
set undofile
set undodir=~/.vim/_undo/

au BufRead,BufNewFile *.html.slim set filetype=slim
au BufRead,BufNewFile *.html.inky set filetype=slim

let g:ctrlp_max_depth=40

set noro

let NERDTreeShowHidden=1

call vundle#end()
filetype plugin indent on
