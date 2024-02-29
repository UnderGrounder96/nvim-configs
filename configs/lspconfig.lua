local lspconfig = require "lspconfig"
local configs = require "plugins.configs.lspconfig"

local on_attach = configs.on_attach
local capabilities = configs.capabilities

-- if you just want default config for the servers then put them in a table
local servers = {
  "ansiblels",
  "denols",
  "dockerls",
  "docker_compose_language_service",
  "gopls",
  "gradle_ls",
  "html",
  "lua_ls",
  "pylsp",
  "sqlls",
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
