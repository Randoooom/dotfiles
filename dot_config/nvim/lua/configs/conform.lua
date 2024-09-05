local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    yaml = { "yamlfmt" },
    groovy = { "npm-groovy-lint" },
    vue = { "prettier" },
  },
  formatters = {
    prettier = {
      command = "prettier",
    },
  },
}

require("conform").setup(options)
