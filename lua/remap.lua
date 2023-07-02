vim.g.mapleader = " "
-- Open File explorer
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

-- Move lines in Virtual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join Line Bellow without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Jump lines and put cursor in the middle of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move between patterns and keep cursor in the middel of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste by keeping replaced token in buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- remove highlighted keywords (exit search mode)
vim.keymap.set("n", "<leader>/", ":noh<CR>")

-- create newline on normal mode
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

-- add space in normal mode
vim.keymap.set("n", "<leader><leader>", "i<space><esc>")

-- vim diagnostic float toggle
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
