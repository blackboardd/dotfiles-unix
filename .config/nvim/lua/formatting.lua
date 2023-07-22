-- lua/formatting.lua
vim.g.copilot_filetypes = {
    VimspectorPrompt = false,
    TelescopePrompt = false,
    TelescopeResults = false,
}

vim.keymap.set("n", ";", "<Nop>")
vim.g.mapleader = " "

vim.opt.hlsearch = false
vim.opt.signcolumn = "yes"

-- inverted cursor please!
vim.opt.guicursor = ""

-- wrap
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.showbreak = "↳  "

-- camelCaseMotion
vim.g.camelcasemotion_key = "<leader>"

-- favorites: aurora, dracula, lighthaus, vn-night, oxocarbon
vim.cmd('colo oxocarbon')

vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#002b80" })

-- unicode
vim.opt.encoding = "utf8"
vim.opt.fileencoding = "utf8"

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 8

-- Set clipboard
vim.opt.clipboard = "unnamedplus"

-- Set color column
vim.wo.colorcolumn = "80"

-- Tab stops
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
