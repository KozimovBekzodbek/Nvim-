vim.opt.nu = true
vim.opt.relativenumber = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.linespace = 4

vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

-- init.lua
vim.api.nvim_set_keymap('n', '<leader>nn', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50 
