require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- General
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "]q", "<cmd> cnext <cr>", { desc = "CMD next quickfix" })
map("n", "[q", "<cmd> cprev <cr>", { desc = "CMD previous quickfix" })

-- Nvim dap
map("n", "<leader>dc", "<cmd>lua require('dap').continue()<cr>", { desc = "DAP continue" })
map("n", "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<cr>", { desc = "DAP toggle breakpoint" })
map("n", "<leader>ds", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.toggle()
end, { desc = "DAP toggle sidebar" })

-- Crates
map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "Update crates" })
