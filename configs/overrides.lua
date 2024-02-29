local M = {}

M.treesitter = {
  ensure_installed = {
    -- web dev
    "css",
    "html",
    "javascript",
    "json",
    "typescript",
    "tsx",

    -- unix
    "bash",
    "make",
    "vim",
    "vimdoc",

    -- build
    "c",

    -- ops
    "dockerfile",
    "yaml",

    -- git
    "git_config",
    "gitignore",

    --golang
    "go",
    "gomod",

    -- script
    "groovy",
    "lua",
    "python",

    -- server
    "sql",

    -- docs
    "markdown",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "deno",
    "eslint_d",
    "html-lsp",
    "prettierd",

    -- scripts
    "autopep8",
    "shfmt",
    "python-lsp-server",

    -- server

    -- ops
    -- "ansible-lint",
    -- "ansible-language-server",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "gopls",
    "gradle-language-server",
  },
}

M.conform = {
  notify_on_error = false,

  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt" },
    sh = { "shfmt" },
    terraform = { "terraform_fmt" },
    python = { "autopep8" },
    ["_"] = { "trim_newlines", "trim_whitespace", "prettierd" },
  },

  format_on_save = {
    lsp_fallback = true,
  },
}

-- git support in nvimtree
M.nvimtree = {

  git = {
    enable = true,
  },

  view = {
    width = 29,
  },

  ui = {
    confirm = {
      trash = false,
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
    },
  },
}

-- blankline
M.blankline = {
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
}

return M
