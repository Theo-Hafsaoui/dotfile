local status, packer = pcall(require, "packer")
--might not work

if (not status) then
				print('packer not install: Try yay nvim-packer-git')
				return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
		use 'wbthomason/packer.nvim'		-- plugin manager for neovim
		use 'ellisonleao/gruvbox.nvim'		-- color theme
		use 'nvim-tree/nvim-web-devicons'	-- for nice icons
		use 'skywind3000/asyncrun.vim'	    -- to have asynchrous ex cmd
		use 'romgrk/barbar.nvim'			-- for better tab
		use {								-- powerline in lua
				'nvim-lualine/lualine.nvim',
				requires = { 'nvim-tree/nvim-web-devicons', opt = true }
		}
		use {
				'nvim-treesitter/nvim-treesitter',
				run = ':TSUpdate'
		}
		use "windwp/nvim-autopairs"			-- for pairing {/"/(
		use "dinhhuy258/git.nvim"			-- git wraper for neovim
		use 'windwp/nvim-ts-autotag'		-- for pairing tags in html
		use 'nvim-lua/plenary.nvim'			-- tool for telescope
		use {								-- telescope for search
				'nvim-telescope/telescope.nvim', tag = '0.1.0',
				'nvim-telescope/telescope-file-browser.nvim',
				requires = { {'nvim-lua/plenary.nvim'} }
		}
		use {  								--Nice startup menu
				"startup-nvim/startup.nvim",
				requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
				config = function()
						require"startup".setup()
				end
		}
		use {							--LSP from lsp-zero
				'VonHeikemen/lsp-zero.nvim',
				branch = 'v1.x',
				requires = {
						-- LSP Support
						{'neovim/nvim-lspconfig'},             -- Required
						{'williamboman/mason.nvim'},           -- Optional
						{'williamboman/mason-lspconfig.nvim'}, -- Optional

						-- Autocompletion
						{'hrsh7th/nvim-cmp'},         -- Required
						{'hrsh7th/cmp-nvim-lsp'},     -- Required
						{'hrsh7th/cmp-buffer'},       -- Optional
						{'hrsh7th/cmp-path'},         -- Optional
						{'saadparwaiz1/cmp_luasnip'}, -- Optional
						{'hrsh7th/cmp-nvim-lua'},     -- Optional

						-- Snippets
						{'L3MON4D3/LuaSnip'},             -- Required
						{'rafamadriz/friendly-snippets'}, -- Optional
				}
		}
	end)
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()
