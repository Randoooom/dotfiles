local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    yaml = { "yamlfmt" },
    groovy = { "npm-groovy-lint" },
    vue = { "eslint_d" },
    ts = { "eslint_d" },
    js = { "eslint_d" },
  },
}

require("conform").setup(options)
