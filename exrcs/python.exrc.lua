local cmd = vim.cmd
local set = vim.opt

-- Basics
vim.g.python3_host_prog = '~/.pyenv/versions/3.8.13/bin/python3'

-- Tabs, indent
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4

-- UI
cmd [[colorscheme sonokai]]
set.colorcolumn = '120'

-- LSPConfig
turn_off_lsp_format = function(client)
  client.server_capabilities.document_formatting = false
  client.server_capabilities.document_range_formatting = false
end

require('lspconfig')['pylsp'].setup{
    on_attach = turn_off_lsp_format
}

-- null-ls
exec_format = function(client)
  vim.cmd([[
    augroup LspFormatting
      autocmd! * <buffer>
      autocmd BufWritePre <buffer> lua vim.lsp.buf.format { async = True}
      augroup END
  ]])
end

require("null-ls").setup({
  sources = {
    require("null-ls").builtins.diagnostics.flake8,
    require("null-ls").builtins.formatting.isort,
    require("null-ls").builtins.formatting.black,
  },
  on_attach = exec_format,
})

-- cmp
local cmp = require('cmp')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
  },
  mapping = {
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
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
})

