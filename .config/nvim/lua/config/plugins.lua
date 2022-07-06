local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    ------------------------------
    ---- File Navigation
    ------------------------------
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { "junegunn/fzf", run = ":call fzf#install()" }
    use 'junegunn/fzf.vim'
    use { 'ibhagwan/fzf-lua',
      requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use { 'sudormrfbin/cheatsheet.nvim',
      requires = {
        {'nvim-telescope/telescope.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
      }
    }
    use {'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
      tag = 'nightly'
    }
    ------------------------------
    ---- Lsp and Autocomplete
    ------------------------------
    use {"williamboman/nvim-lsp-installer"}
    use { 'neovim/nvim-lspconfig'}
    use { 'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-path',
            { 'L3MON4D3/LuaSnip',
                requires = {
                    'saadparwaiz1/cmp_luasnip',
                    'rafamadriz/friendly-snippets',
                },
            },
        },
    }
    use { 'nvim-neo-tree/neo-tree.nvim',
        requires = {
          'nvim-lua/plenary.nvim',
            'MunifTanjim/nui.nvim',
        },
        branch = 'v2.x',
    }
    use { 'nvim-treesitter/nvim-treesitter'}
    ----------------------------
    -- Styling 
    ----------------------------
    use 'kyazdani42/nvim-web-devicons'
    use 'maxmellon/vim-jsx-pretty'
    use 'yuezk/vim-js'
    use 'sainnhe/sonokai'
    use 'gruvbox-community/gruvbox'
    use 'ntk148v/vim-horizon'
    use 'lewis6991/gitsigns.nvim'
    use 'sonph/onehalf'
    use 'nvim-lualine/lualine.nvim'
    use 'norcalli/nvim-colorizer.lua'

    if packer_bootstrap then
      require('packer').sync()
    end
      require('setup/lspconfig')
      require('setup/nvim-cmp')
      require('setup/treesitter')
      require('setup/lualine')
  end)

