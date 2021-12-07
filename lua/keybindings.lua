local map = vim.api.nvim_set_keymap

map('n', '<Up>', '<nop>', {noremap = true})
map('n', '<Down>', '<nop>', {noremap = true})
map('n', '<Left>', '<nop>', {noremap = true})
map('n', '<Right>', '<nop>', {noremap = true})

map('n', 'tt', ':tabnew<CR>', {noremap = true})
map('n', 't.', ':tabnext<CR>', {noremap = true})
map('n', 't,', ':tabprevious<CR>', {noremap = true})

map('n', '<C-h>', ':set hlsearch! hlsearch?<CR>', {noremap = true})
map('n', '<C-t>', ':NvimTreeToggle<CR>', {noremap = false})
