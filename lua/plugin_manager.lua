return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- UI tweaks
    use 'Yggdroot/indentLine'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use 'luochen1990/rainbow'

    -- Colorschemes
    use 'nanotech/jellybeans.vim'
    use 'morhetz/gruvbox'
    use 'dracula/vim'

    -- Code
    use 'jiangmiao/auto-pairs'
end)
