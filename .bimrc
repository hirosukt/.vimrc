" 見た目
set nocompatible
set number
set wildmenu
set showmatch
set cmdheight=2
set laststatus=2
set showcmd
set display=lastline
set tabstop=2
set termwinsize=12x0
set nowrap
syntax on
colors wombat
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
set termguicolors

" 操作
set backspace=indent,eol,start
set mouse=a
set ttymouse=xterm2
set clipboard+=unnamed
set completeopt=menuone,noinsert
set scrolloff=2
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=2
set autoindent
set smartindent
set whichwrap=b,s,<,>,[,]
set virtualedit=onemore
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap < <><Left>

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

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
autocmd BufWritePre * :%s/\s\+$//ge

" プラグイン
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'shime/vim-livedown'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
let g:indent_guides_enable_on_vim_startup = 1

function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
