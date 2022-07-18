local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
   Packer_Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
   print "Installing packer: close and reopen Neovim..."
   vim.cmd [[packadd packer.nvim]]
end

-- Autocommand to reload neovim when you save plugins.lua
vim.cmd [[
   augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
   augroup end
]]

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
   return
end

packer.startup(function(use)
    -- make sure to add this line to let packer manage itself
   use 'wbthomason/packer.nvim'
   use 'nvim-lua/plenary.nvim'
   use 'nvim-lua/popup.nvim'
   use 'nvim-treesitter/nvim-treesitter'
   use 'williamboman/nvim-lsp-installer'
   use 'neovim/nvim-lspconfig'
   use 'rafamadriz/friendly-snippets'
   use 'hrsh7th/nvim-cmp'
   use 'L3MON4D3/LuaSnip'
   use 'saadparwaiz1/cmp_luasnip'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'nvim-telescope/telescope.nvim'
   use 'gruvbox-community/gruvbox'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if Packer_Bootstrap then
    require('packer').sync()
  end
end)

