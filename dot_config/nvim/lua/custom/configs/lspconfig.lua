local capabilities = require("plugins.configs.lspconfig").capabilities
local on_attach = function(client, bufnr)
  require("plugins.configs.lspconfig").on_attach(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
end
local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "rust_analyzer", "taplo", "sqlls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
-- 
