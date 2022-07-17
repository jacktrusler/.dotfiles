local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
   packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- make sure to add this line to let packer manage itself
   use 'wbthomason/packer.nvim'
    -- to avoid callbacks, other plugins rely on it
   use 'nvim-lua/plenary.nvim'
   use 'nvim-treesitter/nvim-treesitter'
   use 'williamboman/nvim-lsp-installer'
   use 'neovim/nvim-lspconfig'
   use 'rafamadriz/friendly-snippets'
    -- Completion and snippet plugins
   use 'hrsh7th/nvim-cmp'
   use 'L3MON4D3/LuaSnip'
   use 'saadparwaiz1/cmp_luasnip'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
    -- Finding Files
   use 'nvim-telescope/telescope.nvim'
   use 'gruvbox-community/gruvbox'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

