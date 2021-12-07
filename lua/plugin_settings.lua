local cmd = vim.cmd
local set = vim.opt

cmd 'colorscheme gruvbox'

require('lualine').setup {
    options = {theme = 'gruvbox'}
}
