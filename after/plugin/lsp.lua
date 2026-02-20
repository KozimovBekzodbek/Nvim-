-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "clangd", "lua_ls" },
})

-- nvim-cmp setup
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
        { name = "buffer" },
    }),
})

-- LSP capabilities (cmp bilan)
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- LSP servers
local lspconfig = require("lspconfig")

-- Lua (Neovim config uchun)
lspconfig.lua_ls.setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
        },
    },
})

-- Python
lspconfig.pyright.setup({
    capabilities = capabilities,
})

-- C/C++
lspconfig.clangd.setup({
    capabilities = capabilities,
})

-- LSP keymaps (minimal)
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local buf = args.buf
        local opts = { buffer = buf, noremap = true, silent = true }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end,
})
