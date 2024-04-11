require "nvchad.options"

local o = vim.o

o.cursorlineopt ='both'
vim.opt.relativenumber = true
vim.opt.foldmethod = "marker"
vim.opt.foldmarker = "{,}"
vim.opt.foldlevel = 100
