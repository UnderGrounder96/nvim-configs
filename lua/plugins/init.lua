return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local configs = require("nvchad.configs.lspconfig")

      local on_attach = configs.on_attach
      local on_init = configs.on_init
      local capabilities = configs.capabilities

      local servers = {
        "dockerls",
        "gopls",
        "lua_ls",
        "pylsp",
        "vtsls",
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          on_init = on_init,
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end

      -- To manually set up each LSP
      -- lspconfig.html.setup {
      --   on_attach = on_attach,
      --   capabilities = capabilities,
      -- }
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "dockerfile-language-server",
        "gopls",
        "lua-language-server",
        "python-lsp-server",
        "vtsls",

        -- formatters
        "deno",
        "autopep8",
        "prettierd",
        "shfmt",
        "stylua",
      },

      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
}
