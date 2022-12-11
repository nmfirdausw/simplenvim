local treesitter_exists = pcall(require, "nvim-treesitter")
if not treesitter_exists then return end

local treesitter_configs = require "nvim-treesitter.configs"

treesitter_configs.setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	rainbow = {
		enable = true,
		disable = {},
		extended_mode = false,
		max_file_lines = nil,
	},
	autopairs = { enable = true },
	autotag = { enable = true },
	incremental_selection = { enable = true },
	indent = { enable = true },
})

-- vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
-- 	group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
-- 	callback = function()
-- 		vim.opt.foldmethod = 'expr'
-- 		vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
--   	end
-- })
