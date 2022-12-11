return {
	["wbthomason/packer.nvim"] = {
		config = function () require "plugins" end,
	},

	["rebelot/kanagawa.nvim"] = {
		config = function() require "configs.kanagawa" end,
	},

	["nvim-lua/plenary.nvim"] = {},

	["MunifTanjim/nui.nvim"] = {},

	["famiu/bufdelete.nvim"] = {},

	["kyazdani42/nvim-web-devicons"] = {
		config = function() require "configs.web-devicons" end,
	},

	["nvim-neo-tree/neo-tree.nvim"] = {
		setup = function() vim.g.neo_tree_remove_legacy_commands = true end,
		config = function() require "configs.neo-tree" end,
	},

	["nvim-telescope/telescope.nvim"] = {
		config = function() require "configs.telescope" end,
	},

	["akinsho/toggleterm.nvim"] = {
		config = function() require "configs.toggleterm" end,
	},

	["Darazaki/indent-o-matic"] = {
		config = function() require "configs.indent-o-matic" end,
	},

	["lukas-reineke/indent-blankline.nvim"] = {
		config = function() require "configs.indent-blankline" end,
	},

	["nvim-treesitter/nvim-treesitter"] = {
		run = function() require("nvim-treesitter.install").update { with_sync = true } end,
		config = function() require "configs.treesitter" end,
	},

	["neovim/nvim-lspconfig"] = {
		config = function() require "configs.lspconfig" end
	},

	["onsails/lspkind.nvim"] = {
		config = function() require "configs.lspkind" end,
	},

	["hrsh7th/nvim-cmp"] = {
		config = function() require "configs.cmp" end,
	},

	["rafamadriz/friendly-snippets"] = {},

	["L3MON4D3/LuaSnip"] = {
		config = function() require "configs.luasnip" end,
	},

	["numToStr/Comment.nvim"] = {
		config = function() require "configs.comment" end,
	},

	["hrsh7th/cmp-nvim-lsp"] = { after = "nvim-cmp" },

	["saadparwaiz1/cmp_luasnip"] = { after = "nvim-cmp" },

	["JoosepAlviste/nvim-ts-context-commentstring"] = { after = "nvim-treesitter" },

	["p00f/nvim-ts-rainbow"] = { after = "nvim-treesitter" },

	["windwp/nvim-ts-autotag"] = { after = "nvim-treesitter" },

	["windwp/nvim-autopairs"] = {
		config = function() require "configs.autopairs" end,
	},

  	["lewis6991/gitsigns.nvim"] = {
		config = function() require "configs.gitsigns" end,
  	},

	["xiyaowong/nvim-transparent"] = {
		config = function() require "configs.transparent" end,
	},

  	["rebelot/heirline.nvim"] = {
		config = function() require "configs.heirline" end
	},

  	["j-hui/fidget.nvim"] = {
		config = function() require "configs.fidget" end
  	},

  	["glepnir/lspsaga.nvim"] = {
		config = function() require "configs.lspsaga" end
  	},

	["SmiteshP/nvim-navic"] = {},
}

