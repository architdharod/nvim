  vim.cmd("set expandtab")
  vim.cmd("set tabstop=2")
  vim.cmd("set softtabstop=2")
  vim.cmd("set shiftwidth=2")

-- set relative line numbering
  vim.cmd("set relativenumber")

-- the relative line "0" now shows the global line
  vim.cmd("set nu rnu")

-- Cltr+s is to save the file
  vim.keymap.set('n', '<C-s>', ':wa<CR>', {})
  vim.g.mapleader = " "
