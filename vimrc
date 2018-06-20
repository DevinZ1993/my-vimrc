set exrc
set secure

set nocompatible              " Use vim instead of vi by default.
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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

Plugin 'https://github.com/rhysd/vim-clang-format.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set autoindent
set smartindent
set expandtab              " Emit spaces when typing tab.
set shiftwidth=2
set tabstop=2
set backspace=indent,eol,start
set number
set ruler
set hlsearch               " Highlight search results.
set incsearch              " Incremental search.
set cursorline             " Highlight current line.
set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set clipboard=unnamed
set mouse=a

set fileencodings=utf-8,gb2312,gbk,gb18030  
set termencoding=utf-8
set encoding=utf-8

set colorcolumn=80         " Display max-line-length margin.
highlight ColorColumn ctermbg=darkgray

filetype plugin indent on
syntax on


" Enable spell checking.
set spell spelllang=en_us
hi clear SpellBad 
hi clear SpellRare 
hi clear SpellCap
hi clear SpellLocal
hi SpellBad cterm=underline
