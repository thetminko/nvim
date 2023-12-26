local plugins = {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "prettierd",
        "html-lsp"
      }
    }
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact"
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "css",
        "html",
        "json"
      }
      return opts
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },
    
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    }
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
}

return plugins
