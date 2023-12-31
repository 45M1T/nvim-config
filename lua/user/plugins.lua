vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-telescope/telescope.nvim'
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- use 'nvim-lualine/lualine.nvim'
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use "folke/tokyonight.nvim"
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'theprimeagen/harpoon'
  use 'theprimeagen/vim-be-good'
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
  use {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)
