local neo_tree_exists, neo_tree = pcall(require, "neo-tree")
if not neo_tree_exists then return end

neo_tree.setup({
	close_if_last_window = true,
	popup_border_style = "single",
	enable_diagnostics = true,
	default_component_configs = {
		indent = {
			padding = 0,
			with_expanders = false,
		},
		icon = {
			folder_closed = '',
			folder_open = '',
			folder_empty = '',
			default = '',
		},
		modified = {
      		symbol = '',
		},
		git_status = {
			symbols = {
				added = '',
				deleted = '',
				modified = '',
				renamed = '',
				untracked = '',
				ignored = '',
				unstaged = '',
				staged = '',
				conflict = '',
			},
		},
	},
	window = {
    	width = 30,
    	mappings = {
			o = "open",
			H = "prev_source",
			L = "next_source",
			h = "toggle_hidden",
    	},

	},
	filesystem = {
		follow_current_file = true,
		hijack_netrw_behavior = "open_current",
		use_libuv_file_watcher = true,
	},
})

vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = nil })
