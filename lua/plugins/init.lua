return {
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
      auto_install=true,
  	},
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "lua-language-server", "stylua", "rust-analyzer",
  		},
  	},
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },

  {
    "lervag/vimtex",
    lazy = false,
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },
}
