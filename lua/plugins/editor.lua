return {
  {
    "Exafunction/codeium.nvim",
    config = true,
    event = "BufReadPre",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "hrsh7th/nvim-cmp",
        opts = function()
          local cmp_conf = require("nvchad.configs.cmp")
          table.insert(cmp_conf.sources, { name = "codeium" })
          return cmp_conf
        end,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- web dev
        "css",
        "scss",
        "html",
        "json",
        "javascript",
        "typescript",
        "tsx",

        -- unix
        "bash",
        "make",
        "vim",
        "vimdoc",

        -- docs
        "markdown",

        -- ops
        "dockerfile",
        "yaml",

        -- git
        "git_config",

        --golang
        "go",
        "gomod",

        -- script
        "groovy",
        "lua",
        "python",

        -- server
        "sql",
      },

      indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      ui = {
        confirm = {
          trash = false,
        },
      },

      view = {
        width = 29,
        number = true,
        relativenumber = true,
        float = {
          enable = true,
        },
      },

      renderer = {
        highlight_git = true,
        highlight_modified = "all",
        highlight_opened_files = "all",
        icons = {
          show = {
            git = true,
          },
        },
      },

      filters = {
        git_ignored = false,
        custom = {
          ".git/",
          "__pycache__/",
          "node_modules/",
          ".project",
          ".classpath",
          ".DS_Store",
        },
      },

      filesystem_watchers = {
        ignore_dirs = {
          "__pycache__/",
          "report/",
          "reports/",
          "log/",
          "logs/",
          "public/",
          "build/",
        },
      },
    },
  },
}
