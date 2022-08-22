print('test')
local status, packer = pcall(require, "packer")
--might not work
if (not status) then
				print('packer not install: Try yay packer')
				return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
	use {'ellisonleao/gruvbox.nvim',
				opt=true,
				 require('hafsaoui.plugin_setting.gruvbox')}
	end)
