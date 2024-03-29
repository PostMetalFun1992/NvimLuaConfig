return require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }

  -----------------------------------------------------------
  -- Colorschemes
  -----------------------------------------------------------
  use { 'nanotech/jellybeans.vim' }
  use { 'morhetz/gruvbox' }
  use { 'dracula/vim' }
  use { 'sainnhe/sonokai' }

  -----------------------------------------------------------
  -- UI
  -----------------------------------------------------------
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'romgrk/barbar.nvim' }

  -----------------------------------------------------------
  -- LSP
  -----------------------------------------------------------
  use { 'neovim/nvim-lspconfig' }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/nvim-cmp' }

  -----------------------------------------------------------
  -- Code
  -----------------------------------------------------------
  use { 'nvim-treesitter/nvim-treesitter' }
  use { 'p00f/nvim-ts-rainbow' }

  use { 'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'f-person/git-blame.nvim' }

  use { 'numToStr/Comment.nvim' }
  use { 'windwp/nvim-autopairs' }
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'ii14/exrc.vim' }

end)
