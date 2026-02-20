

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 
vim.keymap.set("n", "<leader>i", "_") 
vim.keymap.set("n", "<leader>s", "g_") 
vim.keymap.set("v", "<leader>i", "_") 
vim.keymap.set("v", "<leader>a", "g_")





vim.keymap.set('i', 'jj', '<Esc>' , { noremap = true, silent = true })





vim.keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>jf", function()
    local filetype = vim.bo.filetype
    local filepath = vim.fn.expand('%:p')
    
    if filetype == 'html' then
        vim.cmd('silent !start ' .. filepath)
    elseif filetype == 'python' then
        vim.cmd(':FloatermNew --wintype=split --position=bottom --height=20')
    else
        print("Bu fayl turi uchun maxsus buyruq yo'q.")
    end
end, { noremap = true, silent = true })





vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader>t", ":vs<CR>")


vim.api.nvim_set_keymap('n', '<C-h>', ':bprev<CR>', { noremap = true, silent = true }) 
vim.api.nvim_set_keymap('n', '<C-l>', ':bnext<CR>', { noremap = true, silent = true }) 




vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.tab_complete()', {expr = true})
vim.api.nvim_set_keymap('s', '<Tab>', 'v:lua.tab_complete()', {expr = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.s_tab_complete()', {expr = true})
vim.api.nvim_set_keymap('s', '<S-Tab>', 'v:lua.s_tab_complete()', {expr = true})

function _G.tab_complete()
  if vim.fn.pumvisible() == 1 then
    return t('<C-n>')
  elseif require('luasnip').expand_or_jumpable() then
    return t('<Plug>luasnip-expand-or-jump')
  else
    return t('<Tab>')
  end
end

function _G.s_tab_complete()
  if vim.fn.pumvisible() == 1 then
    return t('<C-p>')
  elseif require('luasnip').jumpable(-1) then
    return t('<Plug>luasnip-jump-prev')
  else
    return t('<S-Tab>')
  end
end

function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end









