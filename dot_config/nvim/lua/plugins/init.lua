return {
	{
		"stevearc/conform.nvim",
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>fm",
				function()
					require("conform").format({ async = true, lsp_format = "fallback" })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		config = function()
			require("configs.conform")
		end,
		init = function()
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"css-lsp",
				"html-lsp",
				"typescript-language-server",
				"deno",
				"prettier",
				"clangd",
				"clang-format",
				"rust-analyzer",
				"taplo",
				"sqlls",
				"groovy-language-server",
				"yaml-language-server",
				"npm-groovy-lint",
				"helm-ls",
				"terraform-ls",
				"yamlfmt",
				"vue-language-server",
				"pylyzer",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"c",
				"markdown",
				"markdown_inline",
				"rust",
				"sql",
				"vue",
				"terraform",
				"toml",
			},
			endwise = {
				enable = true,
			},
		},
	},

	{
		"mrcjkb/rustaceanvim",
		version = "^3",
		ft = { "rust" },
	},

	{
		"saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		config = function()
			require("crates").setup({
				completion = {
					cmp = {
						enabled = true,
					},
				},
			})
		end,
	},

	{
		"https://git.sr.ht/~reggie/licenses.nvim",
		lazy = false,
		config = function()
			require("licenses").setup({ license = "MIT", copyright_holder = "OneLiteFeatherNet" })
			require("telescope").load_extension("licenses-nvim")
		end,
	},

	{
		"wakatime/vim-wakatime",
		lazy = false,
	},

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	{
		"towolf/vim-helm",
		ft = { "yaml" },
	},

	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		cmd = { "Neogit" },
		config = function()
			require("neogit").setup({
				commit_editor = {
					kind = "split",
				},
				log_view = {
					kind = "split",
				},
				integrations = {
					telescope = true,
					diffview = true,
				},
			})
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		opts = {
			current_line_blame = true,
		},
	},

	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup()
		end,
	},
}
