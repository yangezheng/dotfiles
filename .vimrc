" Enable line numbers
set number 

set wrap linebreak
set mouse=a
set termguicolors

syntax enable

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

" Use <Enter> to confirm completion instead of inserting a new line
"inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

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
"set clipboard=unnamedplus

" Use a dark background (if preferred)
"set background=dark

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Solarized color scheme
Plug 'altercation/vim-colors-solarized'


" UI Enhancements
Plug 'morhetz/gruvbox'                " Gruvbox theme
Plug 'vim-airline/vim-airline'        " Status line
Plug 'ryanoasis/vim-devicons'         " Icons for NERDTree, Airline

" Navigation & Productivity
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
Plug 'junegunn/fzf.vim'               " Fuzzy Finder extension

" Coding Enhancements
Plug 'dense-analysis/ale'             " Linter and auto-fixer
Plug 'jiangmiao/auto-pairs'           " Auto-close brackets
Plug 'tpope/vim-commentary'           " Easy comment/uncomment
Plug 'Yggdroot/indentLine'            " Show indent guides

call plug#end()

" Set the color scheme to solarized
" ============= Theme & Status Line =============
"colorscheme solarized
set background=dark
colorscheme gruvbox
let g:airline_powerline_fonts = 1

" ============= NERDTree (File Explorer) =============
nnoremap <leader>e :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1

" Enable auto-completion menu
set completeopt=menuone,noinsert,noselect

" Set background to dark for Solarized (recommended)
"set background=dark

" Enable better diff highlighting in vimdiff
"augroup vimdiff
"  autocmd!
"  autocmd FileType diff setlocal diffopt+=iwhite  " Ignore whitespace changes
"  autocmd FileType diff setlocal foldmethod=manual  " Disable folding for diff mode
"  autocmd FileType diff setlocal cursorline       " Highlight current line
"  autocmd FileType diff setlocal background=dark " Ensure dark backgrou""nd for diff mode (optional)
"augroup END


" Set colors for diffs
"highlight DiffAdd    ctermfg=green guifg=#00ff00
"highlight DiffChange ctermfg=yellow guifg=#ffff00
"highlight DiffDelete ctermfg=red guifg=#ff0000
"highlight DiffText   ctermfg=blue guifg=#0000ff

" Customize the background for diffs
"autocmd FileType diff setlocal background=dark

