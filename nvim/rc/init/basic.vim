scriptencoding utf-8

syntax on
filetype plugin indent on

set runtimepath+=~/.cache/color_check
set number
set termguicolors
set pumblend=30
set clipboard=unnamed,unnamedplus
set fileencoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set autoindent
set cursorline
set list
set noswapfile
set nowritebackup
set visualbell t_vb=
set showmatch
set matchtime=3
set wrap
set hidden
set infercase
set ignorecase
set smartcase
set incsearch
set hlsearch
set wildmenu
set laststatus=2
set showtabline=2
set nofoldenable
set completeopt=menu,menuone
set noshowmode
set ambiwidth=double
set listchars=tab:>-
set helplang=ja
set conceallevel=0
set termencoding=utf-8

if has('persistent_undo')
    set undodir=~/.config/nvim/undo
    set undofile
endif

let g:python3_host_prog = '/usr/bin/python'

augroup Autocmd
    au!
    au BufRead,BufNewFile *.dart :set filetype=dart
    au BufRead,BufNewFile *.gs :set filetype=javascript
    au BufRead,BufNewFile *.ll :set filetype=llvm
    au BufRead,BufNewFile fonts.conf :set filetype=xml
augroup END
