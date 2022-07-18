local opts = { noremap = true, silent = true }

-- Shorten keymap nvim call
local keymap = vim.api.nvim.set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--   Normal       = "n"
--   Insert       = "i"
--   Visual       = "v"
--   Visual_Block = "x"
--   Terminal     = "t"
--   Command      = "c"

keymap("n", "<leader>e", ":Lex 20<CR>", opts)
keymap("n", "<leader>ff", "Telescope find_files<CR>", opts)
keymap("n", "<leader>lg", "Telescope live_grep<CR>", opts)

-- try these out in normal mode!
-- make sure you have fzf and ripgrep installed.
