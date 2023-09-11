local M = {}

M.treesitter = {
  ensure_installed = {
    -- web dev
    "astro",
    "css",
    "html",
    "graphql",
    "javascript",
    "json",
    "typescript",
    "tsx",

    -- unix
    "bash",
    "make",
    "vim",

    -- build
    "c",
    "cpp",

    -- ops
    "dockerfile",
    "yaml",

    -- git
    "git_config",
    "gitignore",

    -- script
    "groovy",
    "lua",
    "python",

    -- server
    "sql",

    -- docs
    "markdown",
    "markdown_inline",
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
    "astro-language-server",
    "deno",
    "html-lsp",
    "prettierd",
    "stylelint",

    -- scripts
    "autopep8",
    "python-lsp-server",

    -- server
    "sqlfmt",

    -- ops
    "ansible-lint",
    "ansible-language-server",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "gradle-language-server",
    "yaml-language-server",
  }
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
    dotfiles = true,
    exclude = {
      ".git/",
      "__pycache__/",
      "node_modules/",
      ".project",
      ".cilasspath",
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
