local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		yaml = { "yamlfmt" },
		groovy = { "npm-groovy-lint" },
	},
}

require("conform").setup(options)
