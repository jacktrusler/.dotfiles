" ----------------------------
" Variables
" ----------------------------
set nu
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
  set statusline+=%-4.3n\                      " buffer number  
  set statusline+=%f\                          " filename   
  set statusline+=%h%m%r%w                     " status flags  
  set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
  set statusline+=%=                           " right align remainder  
  set statusline+=0x%-8B                       " character value  
  set statusline+=%-14(%l,%c%V%)               " line, character  
  set statusline+=%<%P                         " file position  

colorscheme desert 

" ----------------------------
" Remaps
" ----------------------------
let mapleader = " "
nnoremap <leader>pv :Vexplore<CR>
nnoremap <leader>pV :15Vexplore<CR>
nnoremap <leader>pe :tabedit ./<CR>
nnoremap <leader>pq :tabclose<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>ex :Ex<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>~ :bel 14split \| term<CR>
nnoremap <leader>term :bel 14split \| term<CR>
vnoremap <leader>p "_dP
vnoremap Y "+y

inoremap <C-J> <Down>
cnoremap %% <C-R>=expand('%:h').'/'<CR> 
tnoremap qq <C-\><C-N>
tnoremap quit <C-\><C-N><C-W>k

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
