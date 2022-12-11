local luasnip_exists = pcall(require, "lspconfig")
if not luasnip_exists then return end

require("luasnip.loaders.from_vscode").lazy_load()
