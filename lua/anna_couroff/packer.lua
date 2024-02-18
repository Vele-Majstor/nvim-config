vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("alec-gibson/nvim-tetris")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("folke/tokyonight.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("nvim-treesitter/playground")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
		},
	})
	use("jose-elias-alvarez/null-ls.nvim")
	use("MunifTanjim/prettier.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })

	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp",
	})
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("christoomey/vim-tmux-navigator")
end)
