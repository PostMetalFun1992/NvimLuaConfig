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
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
map("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", opts)

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
map('n', '<leader>.', '<cmd>bnext<CR>', opts)
map('n', '<leader>,', '<cmd>bprevious<CR>', opts)

map('n', 'tt', '<cmd>tabnew<CR>', opts)
map('n', 't.', '<cmd>tabnext<CR>', opts)
map('n', 't,', '<cmd>tabprevious<CR>', opts)

map('n', '<C-h>', ':set hlsearch! hlsearch?<CR>', opts)
