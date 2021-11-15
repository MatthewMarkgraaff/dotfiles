set nocompatible

call plug#begin(stdpath('data') . '/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bling/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-dispatch'
Plug 'fatih/vim-go'

" surrounds and auto close
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

"dart
Plug 'dart-lang/dart-vim-plugin'

"solidity
Plug 'tomlion/vim-solidity'

" code snippets & deps
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'

" colors
Plug 'sainnhe/sonokai'
Plug 'ayu-theme/ayu-vim'

" package managers
Plug 'tpope/vim-bundler'

" autocomplete & lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" syntax plugins
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'slim-template/vim-slim'

call plug#end()

" vim javascript
let g:javascript_plugin_jsdoc = 1

" Add key shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

filetype off

if has('termguicolors')
  set termguicolors
endif

let g:airline_theme = 'sonokai'
let g:sonokai_enable_italic = 1

colorscheme sonokai


" vim-javascript syntax highlighting
let g:javascript_plugin_jsdoc = 1

:set expandtab
:set tabstop=2
:set shiftwidth=2
:set tabstop=2
:set autochdir

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType go setlocal shiftwidth=4 tabstop=4

" vim-typescript
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" vim-rspec
let g:rspec_runner = "os_x_iterm2"
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch rspec {spec}"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

imap jk <esc>
imap kj <esc>
set wildmenu

" closetag.vim config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.cfm,*.cfc'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.cfm,*.cfc'

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

:set noswapfile

set dir=~/.vim/_swap//

set number

set backup
set backupdir=~/.vim/_backup/,~/tmp,.

set undofile
set undodir=~/.vim/_undo/

au BufNewFile,BufRead *.ejs set filetype=html

autocmd FileType typescript,html call angular_cli#init()

let g:ctrlp_max_depth=40

let NERDTreeShowHidden=1

" allow project specific .vimrc
set exrc
set secure
set encoding=utf-8

" snipmate specific
let g:snipMate = { 'snippet_version' : 1 }

" vim-go syntax highlighting
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

filetype plugin indent on
