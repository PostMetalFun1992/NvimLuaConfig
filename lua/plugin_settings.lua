local cmd = vim.cmd
local set = vim.opt

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
cmd [[colorscheme dracula]]

-----------------------------------------------------------
-- nvim-tree
-----------------------------------------------------------
require('nvim-tree').setup {
  update_focused_file = {
    enable = true,
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
    root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" },
  },
  view = {
    width = 45,
    -- adaptive_size = true,
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
vim.g.indentLine_enabled = 1
vim.g.indent_blankline_char = "▏"
vim.g.indent_blankline_buftype_exclude = {
  "nofile",
  "terminal",
  "lsp-installer",
  "lspinfo",
}
vim.g.indent_blankline_filetype_exclude = {
  "help",
  "dashboard",
  "packer",
  "NvimTree",
}

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
