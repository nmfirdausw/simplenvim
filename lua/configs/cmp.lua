local cmp_exists, cmp = pcall(require, "cmp")
if not cmp_exists then return end

local luasnip_exists, luasnip = pcall(require, "luasnip")
if not luasnip_exists then return end

local lspkind_exists, lspkind = pcall(require, "lspkind")

local function has_words_before()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

local border_opts = {
    border = "single",
    winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None"
}

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(border_opts),
        documentation = cmp.config.window.bordered(border_opts),
    },

    snippet = {
        expand = function(args) luasnip.lsp_expand(args.body) end,
    },

    formatting = {
        format = lspkind_exists and lspkind.cmp_format({
            mode = 'symbol',
            maxwidth = 50,
            ellipsis_char = '...',
        }) or nil,
    },

	sources = cmp.config.sources({
	    { name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}),
	mapping = {
        ['<C-g>'] = cmp.mapping(function(fallback)
          vim.api.nvim_feedkeys(vim.fn['copilot#Accept'](vim.api.nvim_replace_termcodes('<Tab>', true, true, true)), 'n', true)
        end),
		["<CR>"] = cmp.mapping.confirm { select = false },
    	["<Tab>"] = cmp.mapping(function(fallback)
      		if cmp.visible() then
        		cmp.select_next_item()
      		elseif luasnip.expandable() then
        		luasnip.expand()
      		elseif luasnip.expand_or_jumpable() then
        		luasnip.expand_or_jump()
      		elseif has_words_before() then
        		cmp.complete()
      		else
        		fallback()
      		end
    	end, {
      		"i",
      		"s",
    	}),
    	["<S-Tab>"] = cmp.mapping(function(fallback)
      		if cmp.visible() then
        		cmp.select_prev_item()
      		elseif luasnip.jumpable(-1) then
        		luasnip.jump(-1)
      		else
        		fallback()
      		end
    	end, {
      		"i",
      		"s",
    	}),
	}
})
