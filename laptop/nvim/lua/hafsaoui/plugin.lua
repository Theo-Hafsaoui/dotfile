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
	end)
