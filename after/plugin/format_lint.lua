-- FORMAT: conform.nvim
local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        python = { "isort", "black" },
        lua = { "stylua" },       -- ixtiyoriy: stylua o‘rnatsangiz
        cpp = { "clang_format" }, -- ixtiyoriy
        c = { "clang_format" },
    },
})

-- Save qilganda format
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        conform.format({ lsp_fallback = true, timeout_ms = 2000 })
    end,
})

-- LINT: nvim-lint
local lint = require("lint")
lint.linters_by_ft = {
    python = { "ruff" },
}

-- Save va insertdan chiqishda lint
vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
    callback = function()
        lint.try_lint()
    end,
})
