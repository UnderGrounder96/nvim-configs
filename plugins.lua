local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = overrides.blankline,
  },

  -- Install a plugin
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup {
        terminals = {
          type_opts = {
            float = {
              row = 0.15,
              col = 0.2,
              width = 0.6,
              height = 0.6,
            },
          },
        },
      }
    end,
  },

  {
    "0x00-ketsu/autosave.nvim",
    event = "BufRead",
    config = function()
      require("autosave").setup {
        events = { "CursorHold", "FocusLost" },
        prompt_message = function()
          return "💾: " .. vim.fn.expand "%" .. " @ " .. vim.fn.strftime "%T"
        end,
      }
    end,
  },

  {
    "cappyzawa/trim.nvim",
    event = "BufRead",
    config = function()
      require("trim").setup {
        trim_last_line = false,
      }
    end,
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        signs = false,
      }
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   lazy = false,
  -- }
}

return plugins
