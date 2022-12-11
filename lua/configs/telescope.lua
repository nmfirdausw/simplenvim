local telescope_exists, telescope = pcall(require, "telescope")
if not telescope_exists then return end

local actions = require "telescope.actions"
telescope.setup({
	defaults = {
		promt_prefix = " ",
		selection_caret = "❯ ",
		path_display = { "truncate" },
		selection_strategy = "reset",
    	layout_strategy = "horizontal",
		sorting_strategy = "ascending",
    	layout_config = {
			horizontal = {
        		prompt_position = "top",
        		preview_width = 0.60,
        		results_width = 0.40,
			},
		},
		border = {},
		winblend = 0,
		borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
	},
	pickers = {},
	extensions = {},
})
