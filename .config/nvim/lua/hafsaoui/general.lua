--General settings for neovim

o=vim.opt

o.encoding = 'utf-8'			      -- encoding in the buffer
o.fileencoding = 'utf-8'		  	  -- encoding written in the file
vim.opt.shell = 'fish'		          -- better shell
o.wrap = false                        -- display lines as one long line
o.cmdheight = 2                       -- more space in the neovim command line for displaying messages
--Tabulation
o.tabstop = 8				          -- tab character look like 8 space
o.expandtab = true                    -- force to only use space for tab
vim.o.softtabstop = 4                 -- 4 space instead of tab
vim.o.shiftwidth = 4 				  -- 4 spaces inserted when indenting

o.scrolloff = 8                       -- keep thing center
o.history = 100				          -- history of size 100
o.undofile = true                     -- enable persistent undo
o.undolevels = 1000			          -- enable undo tree of size 1000
o.updatetime = 300                    -- faster completion (4000ms default)
o.showmode = false                    -- we don't need to see things like -- INSERT -- anymore
o.splitbelow = true                   -- force all horizontal splits to go below current window
o.splitright = true                   -- force all vertical splits to go to the right of current window
o.showtabline = 2                     -- always show tabs
o.cursorline = true                   -- highlight the current line
o.autochdir = true			          -- working directory will always be the same as your working directory
o.swapfile = false                    -- no more anoying message
o.number = true                       -- set numbered lines
o.autoindent = true			          -- good auto indent
o.smartindent = true			      -- make indent smart
o.cmdheight = 2			              -- add space to print message
o.mouse= 'a'				          -- enable the mouse in all the mode

o.termguicolors = true			      -- enable 24bit color
o.winblend = 20				          -- enables pseudo-transparency for window at 20%
o.wildoptions = 'pum'			 	  -- change behavior of cmdline completion
o.pumblend = 5				  		  -- enable pseudo-transparency for pop-ip at 5%	
o.background = 'dark'		          -- tell neovim that the theme is dark
vim.cmd("let g:asyncrun_open = 6")    -- Asynch cmd have the output print onto 6 lines
