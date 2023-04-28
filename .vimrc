let mapleader = "\<Space>"

" ====================
" PLUGINS
" ====================
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-rooter'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
" Plug 'rust-lang/rust.vim'
Plug 'ekalinin/Dockerfile.vim'
"Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
"Plug 'OmniSharp/omnisharp-vim'
Plug 'preservim/nerdtree'
"Plug 'autozimu/LanguageClient-neovim', {
"\ 'branch': 'next',
"\ 'do': 'bash install.sh',
"\ }
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
" Plug 'tpope/vim-dispatch'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
call plug#end()

" ====================
" EDITOR Settings
" ====================
set nocompatible
set encoding=utf-8
set scrolloff=999
set modifiable
set number
set relativenumber

" Color scheme
let base16colorspace=256
set background=dark
hi Normal ctermbg=NONE
"colorscheme base16-atelier-dune

"Enable syntax highlighting
syntax on

" Matching bracket highlight
set showmatch

" Indentation and display
filetype plugin on
filetype indent on
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
autocmd FileType cs setlocal shiftwidth=4

"display row and column
set ruler

"Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

" Ctrl+c and Ctrl+j as Esc
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

" Permanent undo
set undodir=~/.vimdid
set undofile

" Jump to start and end of line using the home row keys
map H ^
map L $

"Fuzzy searching for files
"map <C-p> :Files<CR>

"Hot keys
nmap <leader>; :Buffers<CR>
nmap <leader>w :w<CR>
nnoremap <leader><leader> <c-^>
noremap <leader>s :Rg
"noremap <leader>t :AleToggle
nmap <C-n> :NERDTreeToggle<CR>

"Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>

"Always set status bar
set laststatus=2

"Grepping inside vim
if executable('rg')
  set grepprg=rg\ --no-heading\ --vimgrep
  set grepformat=%f:%l:%c:%m
endif

"Enable autocomplete
"let g:deoplete#enable_at_startup = 1

" Clipboard
" =========
set clipboard^=unnamed,unnamedplus
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
