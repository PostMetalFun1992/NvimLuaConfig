return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- keep it !

  -----------------------------------------------------------
  -- UI
  -----------------------------------------------------------
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use 'windwp/windline.nvim'
  use 'luochen1990/rainbow'
  use 'Yggdroot/indentLine'

  -----------------------------------------------------------
  -- Colorschemes
  -----------------------------------------------------------
  use 'nanotech/jellybeans.vim'
  use 'morhetz/gruvbox'
  use 'dracula/vim'

  -----------------------------------------------------------
  -- Code
  -----------------------------------------------------------
  use 'dense-analysis/ale'
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'

  -- Git
  use {'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'}
  use 'tpope/vim-fugitive'

  use 'numToStr/Comment.nvim'
  -- Auto-close parentheses
  use 'cohama/lexima.vim'

  -----------------------------------------------------------
  -- Other
  -----------------------------------------------------------
  use 'ii14/exrc.vim'
end)

