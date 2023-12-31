vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
local cmd = vim.cmd

keymap("n", "<leader>pv", "<cmd>Ex<CR>", opts)
keymap("n", "<leader>ee", "<cmd>Lex<CR><cmd>vertical resize 20<CR>", opts)

-- MOVE --
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- WINDOW --
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)

-- INCREMENT / DECREMENT --
keymap("n", "+", "<C-a>", opts)
keymap("n", "-", "<C-x>", opts)

-- SELECT ALL --
keymap("n", "<C-a>", "ggVG", opts)


-- NAVIGATE --
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")


-- LSP DIAGNOSTIC --
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
keymap("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
keymap("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)
keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
keymap("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

-- TOGGLE TERM --
keymap("n", "<leader>th", "<cmd>ToggleTerm size=8 dir=~/Desktop direction=horizontal name=desktop<CR>", opts)
keymap("n", "<leader>tr", "<cmd>ToggleTerm size=40 dir=~/Desktop direction=vertical name=desktop<CR>", opts)
