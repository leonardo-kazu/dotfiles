local cmp = require "cmp"

local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "plugins.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  }
}

return plugins
