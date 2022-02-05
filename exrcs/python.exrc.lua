local cmd = vim.cmd
local set = vim.opt

-- Basics
vim.g.python3_host_prog = '~/.pyenv/versions/3.8.12/bin/python3'

-- Tabs, indent
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4

-- UI
cmd [[colorscheme dracula]]
set.colorcolumn = '120'

-- ALE
vim.g.ale_linters = {python = {'flake8'}}
vim.g.ale_fixers = {python = {'isort', 'black'}}
