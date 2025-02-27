" Enable line numbers
set number

" Use spaces instead of tabs
set expandtab

" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Enable auto-indentation
set smartindent
set autoindent
set smarttab

" Show matching parentheses and brackets
set showmatch

" Highlight search results
set hlsearch
" Ignore case when searching
set ignorecase
" Enable incremental search
set incsearch

" Enable line wrapping
set wrap

" Show the cursor line
set cursorline

" Enable clipboard (macOS support)
set clipboard=unnamedplus

" Use a dark background (if preferred)
set background=dark

" Save file with leader+w
nnoremap <leader>w :w<CR>

" Quit Vim with leader+q
nnoremap <leader>q :q<CR>

" Save and quit with leader+x
nnoremap <leader>x :x<CR>

" Reload file with leader+r
nnoremap <leader>r :e!<CR>

" Set leader key to space
let mapleader = " "

" Initialize plugin manager
call plug#begin('~/.vim/plugged')

" File Explorer - NerdTree
Plug 'preservim/nerdtree'

" Syntax Highlighting - vim-polyglot
Plug 'sheerun/vim-polyglot'

" Autocompletion - CoC (requires Node.js)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Solarized color scheme
Plug 'altercation/vim-colors-solarized'

Plug 'tpope/vim-fugitive'

call plug#end()

" Set the color scheme to solarized
colorscheme solarized

" Set background to dark for Solarized (recommended)
set background=dark

" Enable better diff highlighting in vimdiff
augroup vimdiff
  autocmd!
  autocmd FileType diff setlocal diffopt+=iwhite  " Ignore whitespace changes
  autocmd FileType diff setlocal foldmethod=manual  " Disable folding for diff mode
  autocmd FileType diff setlocal cursorline       " Highlight current line
  autocmd FileType diff setlocal background=dark " Ensure dark background for diff mode (optional)
augroup END


" Set colors for diffs
highlight DiffAdd    ctermfg=green guifg=#00ff00
highlight DiffChange ctermfg=yellow guifg=#ffff00
highlight DiffDelete ctermfg=red guifg=#ff0000
highlight DiffText   ctermfg=blue guifg=#0000ff

" Customize the background for diffs
autocmd FileType diff setlocal background=dark

