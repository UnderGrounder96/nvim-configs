return {
  {
    "cappyzawa/trim.nvim",
    event = "BufWritePre",
    config = true,
  },

  {
    "0x00-ketsu/autosave.nvim",
    event = "BufReadPost",
    opts = {
      events = { "CursorHold", "FocusLost" },
      prompt_message = function()
        return "💾: " .. vim.fn.expand("%") .. " @ " .. vim.fn.strftime("%T")
      end,
    },
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      notify_on_error = false,

      format_on_save = {
        lsp_fallback = true,
      },

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
        ["_"] = { "prettierd" },
      },
    },
  },
}
