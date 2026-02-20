local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        -- bu yer ixtiyoriy sozlamalar uchun
    },
})

-- fzf-native bo'lsa yuklaydi, bo'lmasa jim turadi
pcall(telescope.load_extension, "fzf")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {})
