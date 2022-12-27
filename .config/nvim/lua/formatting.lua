-- lua/formatting.lua

-- Remap space as leader key
vim.cmd([[
  nnoremap ; <Nop>
  let mapleader=" "
  ]])

vim.cmd([[
  set nohlsearch
  set signcolumn=yes
  ]])

-- inverted cursor please!
vim.opt.guicursor = ""

-- camelCaseMotion
vim.g.camelcasemotion_key = '<leader>'

-- theme
-- ones that i like:
--   aurora
--   dracula
--   lighthaus
--   vn-night
vim.cmd([[
    colo carbonfox
    highlight Normal guibg=none
    highlight NonText guibg=none
]])
-- unicode
vim.cmd([[
    set encoding=utf8
    set fileencoding=utf8
]])

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 8

-- Set clipboard
vim.cmd('set clipboard=unnamedplus')

-- Set color column
vim.wo.colorcolumn = "80"

-- Tab stops
vim.cmd('filetype plugin indent on')
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enable break indent
vim.o.breakindent = true

-- good indenting
vim.o.autoindent = true
vim.o.smartindent = true

-- Case insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Always global substitute
vim.o.gdefault = true

-- Set colorscheme
vim.o.termguicolors = true
