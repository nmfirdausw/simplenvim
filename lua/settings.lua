local opt = {
	clipboard = "unnamed,unnamedplus",
	cmdheight = 0,
	swapfile = false,
	writebackup = false,
	history = 100,
	number = true,
	wrap = false,
	tabstop = 4,
	expandtab = true,
	shiftwidth = 4,
	laststatus = 3,
	fillchars = { eob = " " },
	pumheight = 10,
	relativenumber = true,
	numberwidth = 1,
	termguicolors = true,
	completeopt = { "menuone", "noselect" },
	cursorcolumn = true,
	cursorline = true,
	signcolumn = "yes",
	splitbelow = true,
	splitright = true,
}

local g = {
	mapleader = " ",
	neovide_scale_factor = 1.5,
	neovide_transparency = 0.5,
}

for key, value in pairs(opt) do
	vim.opt[key] = value
end

for key, value in pairs(g) do
	vim.g[key] = value
end
