local null_ls = require("null-ls")

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
}
