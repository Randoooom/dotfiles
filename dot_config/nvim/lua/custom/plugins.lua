local tabnine = require('cmp_tabnine.config')

tabnine.setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = '..',
	ignored_file_types = {
		-- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	},
	show_prediction_strength = true
})

return {
  ["nvim-tree/nvim-web-devicons"] = {},
  ["nvim-tree/nvim-tree.lua"] = {
    override_options = {
      git = {
        enable = true
      }
    },
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.lspconfig"
    end,
  },
  ["HiPhish/nvim-ts-rainbow2"] = {},
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "vim",
        "rust",
        "lua",
      },
      rainbow = {
        enabled = true,
        query = "rainbow-parens",
      },
    }
  },
  ["andweeb/presence.nvim"] = {},
  ["hrsh7th/nvim-cmp"] = {
    override_options = {
      sources = {
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "cmp_tabnine" },
      }
    }
  },
  ["tzachar/cmp-tabnine"] = {
    run='./install.sh',
    requires = 'hrsh7th/nvim-cmp'
  },
  ["voldikss/vim-floaterm"] = {}
}

