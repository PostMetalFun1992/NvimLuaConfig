local cmd = vim.cmd
local set = vim.opt

cmd 'colorscheme jellybeans'

-- lualine
require('lualine').setup {
  options = {theme = 'jellybeans'}
}

-- nvim-tree
vim.g.nvim_tree_indent_markers = 1
require('nvim-tree').setup()

-- rainbow
vim.g.rainbow_active = 1

-- gitsigns
require('gitsigns').setup()

--lexima
vim.g.lexima_enable_basic_rules = 1

-- Comment
require('Comment').setup()

-- ale
vim.g.ale_sign_error = '✖'
vim.g.ale_sign_warning = '⚠'
vim.g.ale_linters_explicit = 1
