execute pathogen#infect()
syntax on

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
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
set ttyfast
set ruler                           " show line / column
set ignorecase                      " case insensitive search
set smartcase                       " case sensitive search if uppercase
set incsearch                       " incremental search
set showmatch                       " show matching bracket
set hlsearch                        " highlight matches
set colorcolumn=80                  " show column 80
set backspace=indent,eol,start      " backspace through everything
set so=7                            " 7 lines when scrolling up/down
set wildmenu                        " enable wild menu (command completion)

set nobackup
set nowb
set noswapfile

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

" clean all trailing whitespaces in file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" reselect pasted text
nnoremap <leader>v V`]

" PLUGINS

" file lookup
map <leader>o :CommandT<CR>

" file browser
map <C-o> :NERDTreeToggle<CR>

" file structure
nmap <C-t> :TagbarToggle<CR>

" comments
"nmap <leader>cc :NERDComUncommentLine<CR>
"map <C-/> :NERDComAlignedComment<CR>

" ack
map <leader>f :Ack<space>

