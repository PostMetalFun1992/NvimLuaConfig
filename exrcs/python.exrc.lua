local cmp = require('cmp')
local lsp = require('lspconfig')
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

-- Autocomplete
lsp.pylsp.setup {}

cmp.setup {
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
  },
}
