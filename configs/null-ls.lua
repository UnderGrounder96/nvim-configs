local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LSPFormmatting", {})

local b = null_ls.builtins


local sources = {
  -- FORMATTING

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettierd,

  -- css, scss
  b.formatting.stylelint,

  -- Lua
  b.formatting.stylua,

  -- python
  b.formatting.autopep8,

  -- servers
  b.formatting.sqlfmt,

  -- CODE_ACTIONS

  -- git
  b.code_actions.gitsigns,

  -- DIAGNOSTICS
  -- ansible
  b.diagnostics.ansiblelint,

  -- js/ts
  b.diagnostics.deno_lint,

  -- terraform
  b.diagnostics.terraform_validate,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })

      vim.api.nvim_create_autocmd("BufWritePost", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}
