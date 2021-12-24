local map = vim.api.nvim_set_keymap

-----------------------------------------------------------
-- Arrows
-----------------------------------------------------------
map('n', '<Up>', '<nop>', {noremap = true})
map('n', '<Down>', '<nop>', {noremap = true})
map('n', '<Left>', '<nop>', {noremap = true})
map('n', '<Right>', '<nop>', {noremap = true})

map('v', '<Up>', '<nop>', {noremap = true})
map('v', '<Down>', '<nop>', {noremap = true})
map('v', '<Left>', '<nop>', {noremap = true})
map('v', '<Right>', '<nop>', {noremap = true})

-----------------------------------------------------------
-- Tabs
-----------------------------------------------------------
map('n', 'tt', ':tabnew<CR>', {noremap = true})
map('n', 't.', ':tabnext<CR>', {noremap = true})
map('n', 't,', ':tabprevious<CR>', {noremap = true})

-----------------------------------------------------------
-- HLsearch
-----------------------------------------------------------
map('n', '<C-h>', ':set hlsearch! hlsearch?<CR>', {noremap = true})
map('n', '<C-t>', ':NvimTreeToggle<CR>', {noremap = false})

