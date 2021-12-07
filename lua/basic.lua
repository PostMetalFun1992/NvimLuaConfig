local cmd = vim.cmd
local set = vim.opt

set.clipboard = 'unnamed'
set.encoding = 'UTF-8'

set.number = true
set.termguicolors = true
set.background = 'dark'
set.signcolumn = 'yes'

cmd 'filetype indent plugin on'
cmd 'syntax enable'

set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2

set.splitright = true
set.splitbelow = true

set.cursorline = true
cmd 'hi CursorLine term=bold cterm=bold guibg=Grey40'

vim.g.python3_host_prog = '/usr/bin/python3'

-- per-project confs
-- set.exrc = true
-- set.secure = true
