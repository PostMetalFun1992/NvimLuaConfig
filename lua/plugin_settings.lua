local cmd = vim.cmd
local set = vim.opt

-- windline
require('wlsample.bubble2')

-- nvim-tree
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

require('nvim-tree').setup {
  auto_close = true
}

-- rainbow
vim.g.rainbow_active = 1

-- gitsigns
require('gitsigns').setup()

--lexima
vim.g.lexima_enable_basic_rules = 1

-- Comment
require('Comment').setup()

-- exrc.vim
cmd [[
  autocmd BufWritePost .exrc.lua nested silent ExrcTrust
  let g:exrc#names = ['.exrc.lua']
]]

-- execute this before statusline starts
cmd 'colorscheme gruvbox'
