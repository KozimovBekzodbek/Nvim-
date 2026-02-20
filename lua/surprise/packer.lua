vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- Colorscheme
    use({
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end,
    })

    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            local ok, ts = pcall(require, "nvim-treesitter")
            if not ok then return end

            -- sizda configs API yo'q, shuning uchun bu yerdan setup chaqirmaymiz.
            -- minimal: treesitter modul yuklansin, parserlar keyin o'rnatiladi.
        end,
    })
    -- Treesitter (MUHIM: setup shu yerda!)
    --  use({
    --  "nvim-treesitter/nvim-treesitter",
    -- run = ":TSUpdate",
    --config = function()
    --  require("nvim-treesitter.configs").setup({
    --  highlight = { enable = true },
    -- indent = { enable = true },
    -- ensure_installed = { "lua", "python", "javascript" }, -- xohlasangiz
    --  })
    -- end,
    -- })

    -- Primeagen tools
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    -- Nvim tree
    use({ "nvim-tree/nvim-web-devicons" })

    use({
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({})
        end,
    })

    use("voldikss/vim-floaterm")

    -- Snippets
    use({
        "L3MON4D3/LuaSnip",
        requires = { "rafamadriz/friendly-snippets" },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    })

    -- Bufferline
    use({
        "akinsho/bufferline.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup({
                options = {
                    numbers = "none",
                    close_command = "bdelete! %d",
                    right_mouse_command = "bdelete! %d",
                    left_mouse_command = "buffer %d",
                    middle_mouse_command = nil,
                    buffer_close_icon = ":)",
                    modified_icon = "●",
                    close_icon = "",
                    left_trunc_marker = "",
                    right_trunc_marker = "",
                    max_name_length = 30,
                    max_prefix_length = 15,
                    tab_size = 18,
                    diagnostics = false,
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "Explorer",
                            text_align = "left",
                            padding = 1,
                        },
                    },
                    show_buffer_icons = true,
                    show_buffer_close_icons = true,
                    show_tab_indicators = true,
                    show_duplicate_prefix = false,
                    persist_buffer_sort = true,
                    separator_style = "thin",
                    enforce_regular_tabs = true,
                    always_show_bufferline = true,
                    sort_by = "id",
                },
            })
        end,
    })

    -- Lualine
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })

    -- LSP + Mason
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })
    use({ "neovim/nvim-lspconfig" })

    -- Autocompletion (cmp)
    use({ "hrsh7th/nvim-cmp" })
    use({ "hrsh7th/cmp-nvim-lsp" })
    use({ "hrsh7th/cmp-buffer" })
    use({ "hrsh7th/cmp-path" })
    use({ "saadparwaiz1/cmp_luasnip" })

    -- Snippets (sizda bor, qoladi)
    -- use({ "L3MON4D3/LuaSnip", ... })

    -- Qavs/qo‘shtirnoq autopairs
    use({ "windwp/nvim-autopairs" })

    -- Comment
    use({ "numToStr/Comment.nvim" })

    -- Formatting / Lint
    use({ "stevearc/conform.nvim" })
    use({ "mfussenegger/nvim-lint" })

    -- Git UX
    use({ "lewis6991/gitsigns.nvim" })

    -- Telescope tezlashtirish
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
end)
