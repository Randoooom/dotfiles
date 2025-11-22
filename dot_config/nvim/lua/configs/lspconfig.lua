-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  -- "rust_analyzer",
  "taplo",
  "sqlls",
  "ts_ls",
  "jsonls",
  "cssls",
  "bashls",
  "volar",
  "buf_ls",
  "terraformls",
  "helm_ls",
  "pylsp",
  "jdtls",
  "eslint",
  "html",
  "htmx",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.emmet_language_server.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "vue" },
}

-- lspconfig.yamlls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   settings = {
--     yaml = {
--       format = {
--         enable = true,
--       },
--       validate = true,
--       hover = true,
--       completion = true,
--     },
--   },
-- }
