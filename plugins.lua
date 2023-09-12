local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
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
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
	  "0x00-ketsu/autosave.nvim",
    lazy = false,
    config = function()
      require('autosave').setup {
        events = {"CursorHold", "CursorHoldI", "BufLeave", "FocusLost"},
        prompt_message = function ()
          return "💾: " .. vim.fn.expand('%') .. " @ " .. vim.fn.strftime('%T')
        end,
      }
    end
  },

  {
    "cappyzawa/trim.nvim",
    lazy = false,
    config = function()
      require('trim').setup {
        trim_last_line = false,
      }
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = overrides.blankline,
  },

  {
    "chikko80/error-lens.nvim",
    event = "BufRead",
    dependencies = "nvim-telescope/telescope.nvim",
  },

  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",  -- optional
        "nvim-tree/nvim-web-devicons"       -- optional
    },
    event = "LspAttach",
    opts = {
      lightbulb = {
        enable = false,
      },
      code_action = {
        show_server_name = true,
      },
    },
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

