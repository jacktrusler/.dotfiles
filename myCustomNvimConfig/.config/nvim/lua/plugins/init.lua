vim.cmd "packadd packer.nvim"

local plugins = {

   ["nvim-lua/plenary.nvim"] = { module = "plenary" },
   ["wbthomason/packer.nvim"] = {},

   ["kyazdani42/nvim-web-devicons"] = {
      module = "nvim-web-devicons",
   },

   ["lukas-reineke/indent-blankline.nvim"] = {
      opt = true,
   },

   ["NvChad/nvim-colorizer.lua"] = {
      opt = true,
   },

   ["nvim-treesitter/nvim-treesitter"] = {
      module = "nvim-treesitter",
   },

   -- lsp stuff
   ["williamboman/nvim-lsp-installer"] = {
      opt = true,
   },

   ["neovim/nvim-lspconfig"] = {
      after = "nvim-lsp-installer",
      module = "lspconfig",
      config = function()
         require "plugins.configs.lsp_installer"
         require "plugins.configs.lspconfig"
      end,
   },

   -- load luasnips + cmp related in insert mode only
   ["rafamadriz/friendly-snippets"] = {
      module = "cmp_nvim_lsp",
      event = "InsertEnter",
   },

   ["hrsh7th/nvim-cmp"] = {
      after = "friendly-snippets",
      config = function()
         require "plugins.configs.cmp"
      end,
   },

   ["L3MON4D3/LuaSnip"] = {
      wants = "friendly-snippets",
      after = "nvim-cmp",
   },

   ["saadparwaiz1/cmp_luasnip"] = {
      after = "LuaSnip",
   },

   ["hrsh7th/cmp-nvim-lua"] = {
      after = "cmp_luasnip",
   },

   ["hrsh7th/cmp-nvim-lsp"] = {
      after = "cmp-nvim-lua",
   },

   ["hrsh7th/cmp-buffer"] = {
      after = "cmp-nvim-lsp",
   },

   ["hrsh7th/cmp-path"] = {
      after = "cmp-buffer",
   },


   -- file managing , picker etc
   ["nvim-telescope/telescope.nvim"] = {
      cmd = "Telescope",
      config = function()
         require "plugins.configs.telescope"
      end,
   },
}

require("core.packer").run(plugins)
