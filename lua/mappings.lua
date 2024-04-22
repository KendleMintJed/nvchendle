require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "]q", "<cmd> cnext <cr>", { desc = "CMD next quickfix" })
map("n", "[q", "<cmd> cprev <cr>", { desc = "CMD previous quickfix" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
