local root = vim.fn.fnamemodify("./.repro", ":p")

-- set stdpaths to use .repro
for _, name in ipairs({ "config", "data", "state", "cache" }) do
    vim.env[("XDG_%s_HOME"):format(name:upper())] = root .. "/" .. name
end

-- bootstrap lazy
local lazypath = root .. "/plugins/lazy.nvim"
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

-- install plugins
local plugins = {
    "shaunsingh/nord.nvim", -- nord theme
    "nvim-tree/nvim-web-devicons", -- for nice icons
    "romgrk/barbar.nvim", -- for better tab
    {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    }, -- powerline in lua
    "nvim-treesitter/nvim-treesitter", -- for syntax highlighting
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    "neovim/nvim-lspconfig", -- for Lua support
    {"williamboman/mason.nvim", lazy = false}, -- for Lsp manager
    "hrsh7th/nvim-cmp", -- for auto-completion
    "hrsh7th/cmp-nvim-lsp", -- for LSP support
    "hrsh7th/cmp-buffer", -- for tab-completion
    "hrsh7th/cmp-path", -- for path-completion
    "saadparwaiz1/cmp_luasnip", -- for snippets
    "hrsh7th/cmp-nvim-lua", -- for Lua support
    "L3MON4D3/LuaSnip", -- for Lua snippets
    "rafamadriz/friendly-snippets", -- for other snippets
}
require("lazy").setup(plugins)
require('lsp-zero')
local servers = require('lsp-zero').servers
servers.pyright.enabled = true
require("mason").setup()

vim.opt.termguicolors = true
vim.cmd([[colorscheme nord]])
