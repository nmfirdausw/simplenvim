local web_devicons_exists, web_devicons = pcall(require, "nvim-web-devicons")
if not web_devicons_exists then return end

web_devicons.setup {
	color_icons = true;
 	default = true;
}
