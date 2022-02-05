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

-- LSPConfig
turn_off_lsp_format = function(client)
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
end

require('lspconfig').pylsp.setup({
    on_attach = turn_off_lsp_format
})

-- null-ls
exec_format = function(client)
  if client.resolved_capabilities.document_formatting then
    vim.cmd([[
      augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()
      augroup END
    ]])
  end
end

require("null-ls").setup({
  sources = {
    require("null-ls").builtins.diagnostics.flake8,
    require("null-ls").builtins.formatting.isort,
    require("null-ls").builtins.formatting.black,
  },
  on_attach = exec_format,
})

