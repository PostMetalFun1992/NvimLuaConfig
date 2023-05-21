local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Leader
-----------------------------------------------------------
map("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------------------------------------------------
-- Arrows
-----------------------------------------------------------
map('n', '<Up>', '<nop>', opts)
map('n', '<Down>', '<nop>', opts)
map('n', '<Left>', '<nop>', opts)
map('n', '<Right>', '<nop>', opts)

map('v', '<Up>', '<nop>', opts)
map('v', '<Down>', '<nop>', opts)
map('v', '<Left>', '<nop>', opts)
map('v', '<Right>', '<nop>', opts)

-----------------------------------------------------------
-- NvimTree
-----------------------------------------------------------
map('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', opts)

-----------------------------------------------------------
-- Telescope
-----------------------------------------------------------
map('n', '<leader>f', '<cmd>Telescope find_files<cr>', opts)
map('n', '<leader>g', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>b', '<cmd>Telescope buffers<cr>', opts)

-----------------------------------------------------------
-- Comment
-----------------------------------------------------------
require('Comment').setup {
  toggler = {
    line = '<leader>/',
  },
  opleader = {
    line = '<leader>/',
  },
  mappings = {
    basic = true,
    extra = false,
  },
}

-----------------------------------------------------------
-- nvim-lspconfig
-----------------------------------------------------------
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

-----------------------------------------------------------
-- git-blame
-----------------------------------------------------------
map('n', '<leader>gb', '<cmd>GitBlameToggle<CR>', opts)

-----------------------------------------------------------
-- Other
-----------------------------------------------------------
map('n', 'tt', '<Cmd>tabnew<CR>', opts)
map('n', 'tq', '<Cmd>BufferClose<CR>', opts)
map('n', 't.', '<Cmd>BufferNext<CR>', opts)
map('n', 't,', '<Cmd>BufferPrevious<CR>', opts)

map('n', '<C-h>', ':set hlsearch! hlsearch?<CR>', opts)
