" 見た目
set number
set wildmenu
set showmatch
set cmdheight=2
set laststatus=2
set showcmd
set display=lastline
set tabstop=2
set guioptions+=a
set guioptions+=R
set termwinsize=10x0
syntax on

" 操作
set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set smartindent
set mouse=a
set clipboard+=unnamed

" 検索
set ignorecase
set hlsearch
set wrapscan
set incsearch
set smartcase

" ファイル
set nobackup
set noswapfile
set belloff=all
set history=10000

" プラグイン
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'

call plug#end()
