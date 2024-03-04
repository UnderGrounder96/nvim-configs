local lspconfig = require "lspconfig"
local configs = require "plugins.configs.lspconfig"

local on_attach = configs.on_attach
local capabilities = configs.capabilities

-- if you just want default config for the servers then put them in a table
local servers = {
  "dockerls",
  "gopls",
  "lua_ls",
  "pylsp",
  "vtsls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
--
