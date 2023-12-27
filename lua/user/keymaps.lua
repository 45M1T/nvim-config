vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
local cmd = vim.cmd


-- NVIM TREE --
keymap("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>" , opts)

-- INCREMENT / DECREMENT --
keymap("n", "+", "<C-a>", opts)
keymap("n", "-", "<C-x>", opts)

-- SELECT ALL --
keymap("n", "<C-a>", "ggVG", opts)


-- NAVIGATE --
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)


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

-- BUFFER LINE --

keymap("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>bc", "<cmd>bdelete<CR>", opts)
