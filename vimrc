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

" add syntax highlighting to some known files
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Capfile set filetype=ruby
autocmd BufNewFile,BufRead Rakefile set filetype=ruby
autocmd BufNewFile,BufRead Cheffile set filetype=ruby
autocmd BufNewFile,BufRead config.ru set filetype=ruby
autocmd BufNewFile,BufRead *.rabl set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby

" disable search match highlighting
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

" Mappings
inoremap kj <Esc>
nmap <leader>w :w!<CR>
nmap <leader>q :q<CR>

" window splitting
map <leader>sl :vsplit<CR><C-W>l
map <leader>sh :vsplit<CR><C-W>h
map <leader>sj :split<CR><C-W>j
map <leader>sk :split<CR>

" window movement
map gj <C-w>j
map gk <C-w>k
map gl <C-w>l
map gh <C-w>h

" window resizing
map <silent> <S-h> <C-w><
map <silent> <S-j> <C-w>-
map <silent> <S-k> <C-w>+
map <silent> <S-l> <C-w>>

" new tab and tab cycling
map <leader><tab> :tabnew<CR>
nnoremap <C-h> gT
nnoremap <C-l> gt

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" set current wording directory to current buffer's
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Move a lines up/down with Control+UP/DOWN
nmap <C-Down> mz:m+<cr>`z
nmap <C-Up> mz:m-2<cr>`z
vmap <C-Down> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-Up> :m'<-2<cr>`>my`<mzgv`yo`z

nmap <C-j> mz:m+<cr>`z
nmap <C-k> mz:m-2<cr>`z
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

" clean all trailing whitespaces in file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" reselect pasted text
nnoremap <leader>v V`]

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" copy visual block to osx clipboard
vmap <C-c> :w !pbcopy<CR><CR>

" toggle fold
nnoremap <space> za

"
" PLUGINS CONFIGURATION
"

" Plugin 'altercation/vim-colors-solarized'
set background=dark
colorscheme solarized

" Plugin 'kien/ctrlp.vim'
map <leader>o :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>r :CtrlPMRU<CR>

" Plugin 'mileszs/ack.vim'
"let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column --type=nohtml"
"let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column --ignore-dir=doc --ignore-file=ext:log"
" Use Ag (the silver searcher)
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep --smart-case'
map <leader>f :Ack!<space>

" Plugin 'scrooloose/nerdtree'
map <C-o> <plug>NERDTreeTabsToggle<CR>

" Plugin 'majutsushi/tagbar'
nmap <C-t> :TagbarToggle<CR>gl

" Plugin 'itchyny/lightline.vim'
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'relativepath', 'modified' ],
      \             [ 'ctrlpmark', 'syntastic' ] ]
      \ },
      \ 'component': {
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_function': {
      \   'ctrlpmark': 'CtrlPMark',
      \   'syntastic': 'SyntasticStatuslineFlag'
      \ },
      \ 'component_visible_condition': {
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }

" Plugin 'scrooloose/syntastic'
let g:syntastic_ruby_exec='/usr/local/opt/ruby/bin/ruby'
let g:syntastic_auto_loc_list=2
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_mode_map = { 'passive_filetypes': ['go'] }
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" use goimports for formatting
let g:go_fmt_command = "goimports"

" turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_go_checkers = ['govet', 'errcheck']

au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>

