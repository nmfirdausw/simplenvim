local kanagawa_exists, kanagawa = pcall(require, "kanagawa")
if not kanagawa_exists then return end

kanagawa.setup({
	undercurl = true,
	commentStyle = { italic = true },
	functionStyle = { bold = true },
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = { italic = true },
	variablebuiltinStyle = { italic = true },
	specialReturn = true,
	specialException = true,
	transparent = true,
	globalStatus = true,
	terminalColors = true,
})

vim.cmd("colorscheme kanagawa")
