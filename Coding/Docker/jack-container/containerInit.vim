" ----------------------------
" Variables
" ----------------------------
set nu
set cursorline
set tabstop=2 softtabstop=2
set scrolloff=8
set shiftwidth=2
set expandtab
set smartindent
set exrc
set guicursor=
set hidden
set incsearch
set nohlsearch
set termguicolors

" for completion plugin
set completeopt=menu,menuone,noselect  
" for airline - buffer tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '

" ----------------------------
" Plugins 
" ----------------------------
call plug#begin('~/.vim/plugged')

" ----------------------------
" File Navigation
" ----------------------------
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" ----------------------------
" Color Schemes
" ----------------------------
Plug 'gruvbox-community/gruvbox'
Plug 'ajmwagar/vim-deus'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

colorscheme gruvbox 

:autocmd VimEnter * if (!empty(glob("*.js")) || !empty(glob("*.sol"))) | colorscheme onehalfdark | endif

" ----------------------------
" Remaps
" ----------------------------
let mapleader = " "
nnoremap <leader>pv :Vexplore<CR>
nnoremap <leader>pV :15Vexplore<CR>
nnoremap <leader>pe :tabedit ./<CR>
nnoremap <leader>pq :tabclose<CR>
nnoremap <leader>pg :Telescope git_files<CR>
nnoremap <leader>pf :Telescope find_files<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>ex :Ex<CR>
nnoremap <leader>? :Cheatsheet<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>~ :bel 12split \| term <CR>a
nnoremap <leader>term :bel 12split \| term<CR>a
nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bp<CR>
nnoremap ,d :bd<CR>
nnoremap <leader>x :!chmod +x %<CR>
nnoremap <C-f> :silent !tmux neww tmux-sessionizer<CR>

vnoremap <leader>p "_dP
vnoremap Y "+y

inoremap <C-J> <Down>
cnoremap %% <C-R>=expand('%:h').'/'<CR> 
tnoremap <Esc> <C-\><C-N>
tnoremap quit <C-\><C-N><C-W>k
tnoremap ! <C-\><C-N>:q!<CR>


vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
