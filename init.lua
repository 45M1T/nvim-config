require('user.options')
require('user.keymaps')
require('user.color')
require('user.telescope')
require('user.treesitter')
require('user.lualine')
require('user.lsp')
require('user.harpoon')

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.fillchars:append { eob = " " }

vim.cmd[[highlight CursorLine cterm=NONE ctermbg=White guibg=NONE]]
