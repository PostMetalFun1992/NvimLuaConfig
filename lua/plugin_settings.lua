local cmd = vim.cmd
local set = vim.opt

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
cmd [[colorscheme gruvbox]]

-----------------------------------------------------------
-- nvim-tree
-----------------------------------------------------------
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

require('nvim-tree').setup {
  auto_close = true,
    update_focused_file = {
    enable = true,
  },
}

-----------------------------------------------------------
-- treesitter
-----------------------------------------------------------
require("nvim-treesitter.configs").setup {
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

-----------------------------------------------------------
-- lualine
-----------------------------------------------------------
require('lualine').setup {
  options = {
    disabled_filetypes = {"NvimTree"},
  }
}

-----------------------------------------------------------
-- indent-blankline
-----------------------------------------------------------
-- require('indent-blankline.nvim').setup()

-----------------------------------------------------------
-- gitsigns
-----------------------------------------------------------
require('gitsigns').setup()

-----------------------------------------------------------
-- git-blame
-----------------------------------------------------------
vim.g.gitblame_enabled = 0
vim.g.gitblame_message_template = '<sha> • <date> • <author> • <summary>'

-----------------------------------------------------------
-- nvim-autopairs
-----------------------------------------------------------
require('nvim-autopairs').setup()

-----------------------------------------------------------
-- exrc.vim
-----------------------------------------------------------
cmd [[
  autocmd BufWritePost .exrc.lua nested silent ExrcTrust
  let g:exrc#names = ['.exrc.lua']
]]
