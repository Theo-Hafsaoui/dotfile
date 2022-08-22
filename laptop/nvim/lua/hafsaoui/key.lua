--Added or modified keybinding for neovim

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- meta
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-p>", ":<C-u>nohlsearch<CR><C-l>", opts)

-- Make and Quickfixlist
keymap("n", "<C-m>", ":make<CR>", opts)
--TODO quickfix

-- window management

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<M-k>", ":resize +2<CR>", opts)
keymap("n", "<M-j>", ":resize -2<CR>", opts)
keymap("n", "<M-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<M-h>", ":vertical resize +2<CR>", opts)

-- Terminal
keymap("n", "<C-t>", "::vsplit term://fish<CR>", opts)


