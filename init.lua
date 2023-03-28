local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.wrap = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.termguicolors = true
-- Copy to system clipboard
opt.clipboard = 'unnamedplus'
vim.g.mapleader = "'"


vim.keymap.set('i', 'jk', '<ESC>')

require('plugins-init')
