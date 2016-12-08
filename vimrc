"
" VUNDLE CONFIGURATION
"
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-expand-region'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

"
" VIM CONFIGURATION
"

let mapleader = ','
filetype plugin on
syntax on

" turn annoyings error signals off
" set noerrorbells visualbell t_vb=
if has('autocmd')
  au GUIEnter * set visualbell t_vb=

  " autosave on focus lost
  au FocusLost * silent! wall
endif

set autoread                        " check if file is updated fromm outside
set nocompatible                    " not compatible with vi
set number                          " line numbers
set expandtab                       " use spaces instead of tabs
set tabstop=2                       " 1 tab = 2 spaces
set shiftwidth=2                    " autoindent 2 spaces
set softtabstop=2
set backspace=2
set encoding=utf-8                  " file encoding
set autoindent
set smartindent
set showmode
set showcmd
set virtualedit=onemore
set history=1000                    " lines in history
set laststatus=2
set cursorline                      " show current line
set ttyfast
set ruler                           " show line / column
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set ignorecase                      " case insensitive search
set smartcase                       " case sensitive search if uppercase
set incsearch                       " incremental search
set showmatch                       " show matching bracket
set hlsearch                        " highlight matches
set colorcolumn=80                  " show column 80
set backspace=indent,eol,start      " backspace through everything
set so=7                            " 7 lines when scrolling up/down
set wildmenu                        " enable wild menu (command completion)
set clipboard=unnamed               " osx clipboard
set nobackup
set nowb
set noswapfile
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

"
" PLUGINS CONFIGURATION
"


