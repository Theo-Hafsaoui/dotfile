local status, packer = pcall(require, "packer")
--might not work
if (not status) then
				print('packer not install: Try yay packer')
				return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
		use 'wbthomason/packer.nvim'		--plugin manager for neovim
		use 'ellisonleao/gruvbox.nvim'		--color theme
		use {								--powerline in lua
				'nvim-lualine/lualine.nvim',
				requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}
		use 'neovim/nvim-lspconfig' 		-- configurations for Nvim LSP
		use 'onsails/lspkind-nvim' 			-- add pictograms to lsp
		use 'hrsh7th/cmp-buffer' 			-- nvim-cmp source for buffer words
		use 'hrsh7th/cmp-nvim-lsp' 			-- nvim-cmp source for neovim's built-in LSP
		use 'hrsh7th/nvim-cmp' 				-- Completion
		use 'L3MON4D3/LuaSnip'				-- snipet engine
		use "rafamadriz/friendly-snippets"	-- various snipet for various language
		use {
				'nvim-treesitter/nvim-treesitter',
				run = ':TSUpdate'
		}
	end)
