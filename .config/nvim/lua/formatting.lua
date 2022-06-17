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

-- camelCaseMotion
vim.g.camelcasemotion_key = '<leader>'

-- theme
vim.cmd([[
    au ColorScheme * hi Normal ctermbg=none guibg=none
    au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
    au ColorScheme * hi clear EndOfBuffer
    au ColorScheme * hi clear LineNR
    colo lighthaus
]])
-- unicode
vim.cmd([[
    set encoding=utf8
    set fileencoding=utf8
]])

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff = 3

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
