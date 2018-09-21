syntax enable
set t_Co=256

" Required for Syntastic
execute pathogen#infect()


" Vundle Stuff

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vimproc
Plugin 'Shougo/vimproc.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" PHP
Plugin 'StanAngeloff/php.vim'

" CakePHP
Plugin 'Shougo/unite.vim'
Plugin 'm2mdas/phpcomplete-extended'


" YouCompleteMe (autocomplete)
Plugin 'Valloric/YouCompleteMe'

" General JS
Plugin 'pangloss/vim-javascript'
Plugin 'sheerun/vim-polyglot'

" React JSX
Plugin 'mxw/vim-jsx'

" TypeScript
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'Quramy/tsuquyomi'
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

" Solidity
Plugin 'tomlion/vim-solidity'

" Commenting
Plugin 'scrooloose/nerdcommenter'

" Appearance
Plugin 'sickill/vim-monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

au BufNewFile,BufRead *.jsc set filetype=javascript


syntax on
colorscheme monokai
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType ts setlocal shiftwidth=4 tabstop=4
set backspace=2 " make backspace work like in most other apps
" Indent Stuff
setlocal autoindent
setlocal cindent
setlocal smartindent
set expandtab 
set shiftwidth=4
