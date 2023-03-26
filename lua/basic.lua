local cmd = vim.cmd
local set = vim.opt

-----------------------------------------------------------
-- Basics
-----------------------------------------------------------
set.clipboard = 'unnamedplus'
set.encoding = 'UTF-8'
set.swapfile = false

set.splitright = true
set.splitbelow = true

set.mouse = nil

vim.g.python3_host_prog = '/usr/bin/python3'

----------------------------------------------------------
-- Tabs, indent
----------------------------------------------------------
cmd [[filetype indent plugin on]]

set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2

-----------------------------------------------------------
-- UI
-----------------------------------------------------------
cmd [[syntax enable]]

set.number = true
set.termguicolors = true
set.background = 'dark'

set.signcolumn = 'yes'

set.cursorline = true
cmd [[hi CursorLine term=bold cterm=bold guibg=Grey40]]

 -- remove "~" signs
set.fillchars:append { eob = " " }

-- highlight on yanks
cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]
