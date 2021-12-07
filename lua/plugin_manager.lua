return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- UI tweaks
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use 'luochen1990/rainbow'
    use 'Yggdroot/indentLine'

    -- Colorschemes
    use 'nanotech/jellybeans.vim'
    use 'morhetz/gruvbox'
    use 'dracula/vim'

    -- Code
    use 'cohama/lexima.vim'

    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
end)
