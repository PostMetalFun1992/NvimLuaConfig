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
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }

  use 'numToStr/Comment.nvim'
  use 'cohama/lexima.vim'

  use 'dense-analysis/ale'

  -----------------------------------------------------------
  -- Other
  -----------------------------------------------------------
  use 'ii14/exrc.vim'
end)

