-- Plugin management with lazy
-- bootstrap lazy
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--single-branch",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end

vim.opt.runtimepath:prepend(lazypath)

local plugins = {
    "shaunsingh/nord.nvim", -- nord theme
    "nvim-tree/nvim-web-devicons", -- for nice icons
    "romgrk/barbar.nvim", -- for better tab

    {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    }, -- powerline in lua

    "nvim-treesitter/nvim-treesitter", -- for syntax highlighting

     --### LSP ###
     -- for Lsp manager
    {"williamboman/mason.nvim", lazy = false},
    {'williamboman/mason-lspconfig.nvim'},

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
        dependencies = {
        }
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',       -- Optional
                'hrsh7th/cmp-path',         -- Optional
                'saadparwaiz1/cmp_luasnip', -- Optional
                'hrsh7th/cmp-nvim-lua',     -- Optional
                -- Snippets
                'L3MON4D3/LuaSnip',             -- Required
                'rafamadriz/friendly-snippets', -- Optional

            },
        }
    },
    --### LSP ###

    {-- for file search
        'nvim-telescope/telescope.nvim',
        dependencies = {
            {'nvim-telescope/telescope-file-browser.nvim',
                'nvim-lua/plenary.nvim'}
        },
    },

    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },

    {-- a nice startup screen
        'startup-nvim/startup.nvim',
        dependencies = {
            {'nvim-telescope/telescope.nvim',
                'nvim-lua/plenary.nvim'}
        },
    },

}

require("lazy").setup(plugins)
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    },
})

vim.opt.termguicolors = true
vim.cmd([[colorscheme nord]])
