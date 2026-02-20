require("surprise")
vim.opt.clipboard:append("unnamedplus")


vim.opt.fillchars = {eob = " "}


vim.g.netrw_banner = 0

local shada_path = vim.fn.stdpath('data') .. '/shada/main.shada'

if vim.fn.filereadable(shada_path) == 1 then
  vim.fn.delete(shada_path)
end

vim.opt.shada = "" 

