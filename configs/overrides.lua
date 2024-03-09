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
}

M.conform = {
  notify_on_error = false,

  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt" },
    javascript = { "deno_fmt" },
    javascriptreact = { "deno_fmt" },
    typescript = { "deno_fmt" },
    typescriptreact = { "deno_fmt" },
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
    number = true,
    relativenumber = true,
    float = {
      enable = true,
    },
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
