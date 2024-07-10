-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {
	"rust_analyzer",
	"taplo",
	"sqlls",
	"tsserver",
	"jsonls",
	"cssls",
	"bashls",
	"volar",
	"bufls",
	"terraformls",
	"helm_ls",
	"pylyzer",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	})
end

lspconfig.groovyls.setup({
	on_attach = on_attach,
	on_init = on_init,
	capabilities = capabilities,
	cmd = { "/home/froc/.local/share/nvim/mason/packages/groovy-language-server/groovy-language-server" },
})

lspconfig.yamlls.setup({
	on_attach = on_attach,
	on_init = on_init,
	capabilities = capabilities,
	settings = {
		yaml = {
			format = {
				enable = true,
			},
			validate = true,
			hover = true,
			completion = true,
		},
	},
})
