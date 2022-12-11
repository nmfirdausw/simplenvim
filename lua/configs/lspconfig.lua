local lspconfig_exists, lspconfig = pcall(require, "lspconfig")
if not lspconfig_exists then return end

local navic_exists, navic = pcall(require, "nvim-navic")
if not navic_exists then return end

navic.setup {
	icons = {
        File = " ",
      	Module = " ",
        Namespace = " ",
        Package = " ",
      	Class = "ﴯ ",
        Method = " ",
    	Property = "ﰠ",
        Field = " ",
    	Constructor = "",
      	Enum = "",
        Interface = "練",
        Function = " ",
      	Variable = " ",
        Constant = " ",
        String = " ",
        Number = " ",
        Boolean = "◩ ",
        Array = " ",
        Object = " ",
        Key = " ",
        Null = "ﳠ ",
        EnumMember = " ",
		Struct = "פּ ",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
    },
    highlight = false,
    separator = " > ",
    depth_limit = 0,
    depth_limit_indicator = "..",
    safe_output = true
}

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
  	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

lspconfig.tailwindcss.setup {}

lspconfig.sumneko_lua.setup {
    on_attach = on_attach;
    settings = {
        Lua = {
            runtime = {
            version = 'LuaJIT',
        },
			diagnostics = {
				globals = {'vim'},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}

lspconfig.intelephense.setup {
    on_attach = on_attach;
    settings = {
        intelephense = {
            diagnostics = {
                undefinedTypes = false,
                undefinedFunctions = false,
                undefinedConstants = false,
                undefinedClassConstants = false,
                undefinedMethods = false,
                undefinedProperties = false,
                undefinedVariables = false,
            },
        },
    },
}
