return {
  -- others
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },
  { 'wakatime/vim-wakatime', lazy = false },
  -- rust
  {
    'simrat39/rust-tools.nvim',
    ft = 'rust',
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require("rust-tools").setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function (_, opts)
     local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function ()
  --     local M = require "plugins.configs.cmp"
  --     table.insert(M.sources, {name = "crates"})
  --     return M
  --   end
  -- },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  -- python
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "configs.lspconfig"
      require "configs.lspconfig"
    end
  },
  -- LSP
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier", "rust-analyzer",
        "pyright", "mypy", "ruff", "black",
  		},
  	},
  },
  {
    "wbthomason/packer.nvim"
  },
  {
    "williamboman/mason-lspconfig.nvim"
  },
}
