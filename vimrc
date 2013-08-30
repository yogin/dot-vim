execute pathogen#infect()
Helptags
syntax on

"let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme molokai
let mapleader = ','
filetype plugin on

" turn annoyings error signals off
set noerrorbells visualbell t_vb=
if has('autocmd')
  au GUIEnter * set visualbell t_vb=
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
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set statusline+=%#warningmsg#                                                                                                                                                                                                          
set statusline+=%{SyntasticStatuslineFlag()}                                
set statusline+=%*
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
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

" autosave on focus lost
if has('autocmd')
  au FocusLost * silent! wall
endif

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

" Omnicomplete
"inoremap <C-space> <C-x><C-o>

" PLUGINS

" file lookup
map <leader>o :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>r :CtrlPMRU<CR>

" file browser
"set autochdir
"let NERDTreeChDirMode=2
map <C-o> <plug>NERDTreeTabsToggle<CR>

" file structure
nmap <C-t> :TagbarToggle<CR>gl

" ack
"let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column  --type=nohtml"
let g:ackprg="/usr/local/bin/ack -H --nocolor --nogroup --column --ignore-dir=doc"
map <leader>f :Ack!<space>

" syntastic, auto open/close on syntax errors
let g:syntastic_ruby_exec='/usr/local/opt/ruby/bin/ruby'
let g:syntastic_auto_loc_list=1

" vim-rails
map go <C-w>gf

