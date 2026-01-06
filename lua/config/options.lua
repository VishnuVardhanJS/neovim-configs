vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.undofile = true

vim.opt.showmode = false

--Fixes spacing and expands tabs to spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smarttab = true

--Highlight settings which were annoying after using oil
--vim.opt.hlsearch = false
vim.opt.incsearch = true

--enables true 24 bit colours
vim.opt.termguicolors = true


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"


--vim.opt.colorcolumn = "80"

--to copythings outside
vim.opt.clipboard = "unnamedplus"


--enables mouse
vim.opt.mouse = "a"

--ignores case which searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

--enables split screen
vim.opt.splitbelow = true
vim.opt.splitright = true

--highlight current line
vim.opt.cursorline = true



vim.opt.fileformats = "unix,dos"
