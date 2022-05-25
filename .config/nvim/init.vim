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
" ----------------------------
" Status Line 
" ----------------------------
  set laststatus=2                             " always show statusbar  
  set statusline=  
  set statusline+=%-4.3n\                        " buffer number  
  set statusline+=%f\                          " filename   
  set statusline+=%h%m%r%w                     " status flags  
  set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
  set statusline+=%=                           " right align remainder  
  set statusline+=0x%-8B                       " character value  
  set statusline+=%-14(%l,%c%V%)               " line, character  
  set statusline+=%<%P                         " file position  

" for completion plugin
set completeopt=menu,menuone,noselect  
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
Plug 'ThePrimeagen/harpoon'
" ----------------------------
" Lsp and Autocomplete
" ----------------------------
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" ----------------------------
" Color Schemes
" ----------------------------
Plug 'crusoexia/vim-monokai'
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'ajmwagar/vim-deus'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'Mofiqul/vscode.nvim' 
call plug#end()

" ----------------------------
" Custom Highlights
" ----------------------------
" function! MyHighlights() abort
" endfunction
" 
" augroup MyColors
"     autocmd! 
"     autocmd ColorScheme onehalfdark call MyHighlights()
" augroup END

" autocmd ColorScheme * runtime plugin/diagnostic.vim

colorscheme gruvbox 

:autocmd VimEnter * if (!empty(glob("*.js"))) | colorscheme onehalfdark | endif

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
vnoremap <leader>p "_dP
vnoremap Y "+y

inoremap <C-J> <Down>
cnoremap %% <C-R>=expand('%:h').'/'<CR> 



vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

lua require('lsp/lsp-installer')
lua require('lsp')
