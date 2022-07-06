-- DRY(Don't Repeat Yourself) Helper function
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map("n", "<leader>pv", ":Vexplore<CR>")
map("n", "<leader>pV", ":15Vexplore<CR>")
map("n", "<leader>pe", ":tabedit ./<CR>")
map("n", "<leader>pq", ":tabclose<CR>")
map("n", "<leader>pg", ":Telescope git_files<CR>")
map("n", "<leader>pf", ":Telescope find_files<CR>")
map("n", "<leader>rg", ":Rg<CR>")
map("n", "<leader>ex", ":Ex<CR>")
map("n", "<leader>ev", ":vsplit $MYVIMRC<CR>")
map("n", "<leader>~", ":bel 12 split | term <CR>a")
map("n", "<leader>term", ":bel 12 split | term <CR>a")
map("n", "<leader>n", ":bn<CR>")
map("n", "<leader>N", ":bp<CR>")
map("n", "<leader>d", ":bp | sp | bn | bd<CR>")
map("n", "<leader>D", ":bd<CR>")
map("n", "<leader>b", ":set nomore <Bar> :ls <Bar> :set more <CR>:b<Space>")
map("n", "<leader>pb", ":set nomore <Bar> :ls <Bar> :set more <CR>:Vexplore<CR>:b<Space>")
map("n", "<leader>x", ":!chmod +x %<CR>")
map("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>")
map("n", "<leader>hi", ":echo synIDattr(synID(line('.'), col('.'), 1), 'name')")

map("v", "<leader>p", '"_dP')
map("v", "<leader>Y", '"+y')
map("v", "<leader>y", "ygv<Esc>")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("i", "<C-J>", "<Down>")

map("c", "%%", "<C-R>=expand('%:h').'/'<CR>")

map("t", "<Esc>", '<C-\\><C-N>')
map("t", "!", '<C-\\><C-N>:q!<CR>')
map("t", "quit", '<C-\\><C-N><C-W>k')
