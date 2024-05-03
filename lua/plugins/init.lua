return {
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
    },
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "rust-analyzer",
        "pyright",
        "mypy",
        "ruff",
        "black",
        "debugpy",
      },
    },
  },

  -- LSP config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- Github Copilot
  {
    "github/copilot.vim",
    lazy = false,
  },

  -- Vim fugitive
  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  -- Lazygit
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- Null ls
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      return require "configs.null-ls"
    end,
    lazy = false,
  },

  -- Nvim dap
  {
    "mfussenegger/nvim-dap",
  },

  -- Nvim dap python
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },

  -- Rust.vim
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  -- Rust tools
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "nvim-lspconfig",
    opts = function()
      return require "configs.rust-tool-config"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },

  -- Crates
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },

  -- Cmp
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "nvchad.configs.cmp"
      table.insert(M.sources, { name = "crates" })
      return M
    end,
  },

  -- Vimtex
  {
    "lervag/vimtex",
    lazy = false,
  },

  -- Colorizer
  {
    "norcalli/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        RRGGBBAA = true,
        names = false,
      },
    },
  },
}
