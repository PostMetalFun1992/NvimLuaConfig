return require('packer').startup(function()
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require'nvim-tree'.setup {} end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- Colorschemes
    use 'nanotech/jellybeans.vim'
    use 'morhetz/gruvbox'
    use 'dracula/vim'
end)
