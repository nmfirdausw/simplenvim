local autopairs_exists, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_exists then return end

autopairs.setup({
	map_cr = true,
})
