local lsp = require('lsp-zero').preset({})
local cmp_action = require('lsp-zero').cmp_action()


lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup()

local cmp = require('cmp')
---Config for autoCompletion

cmp.setup({
	sources = {
		{ name = 'path' },
		{ name = 'copilot' },
		{ name = 'nvim_lsp' },
		{ name = 'buffer',  keyword_length = 3 },
		{ name = 'luasnip', keyword_length = 2 },
	},
	mapping = {
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		['<Tab>'] = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
		['<C-k>'] = cmp_action.luasnip_jump_forward(),
		['<C-j>'] = cmp_action.luasnip_jump_backward(),
	},
	preselect = 'item',
	completion = {
		completeopt = 'menu,menuone,noinsert'
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		-- changing the order of fields so the icon is the first
		fields = { 'menu', 'abbr', 'kind' },
		-- here is where the change happens
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
				luasnip = '⋗',
				buffer = 'Ω',
				path = '~',
				nvim_lua = 'Π',
			}

			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
})
