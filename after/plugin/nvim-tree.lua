require'nvim-tree'.setup {
    renderer = {
        highlight_opened_files = "none",
        root_folder_modifier = ":t",
        add_trailing = false,
        group_empty = false,
        highlight_git = true,
        full_name = false,
        indent_markers = {
            enable = false,
        },
        icons = {
           show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
        special_files = { 'README.md', 'Makefile', 'MAKEFILE' },
        symlink_destination = true,
    },
    filters = {
        dotfiles = false,  -- Yashirin fayllarni ko'rsatish uchun false ga o'zgartiring
        custom = { ".git", "node_modules", ".cache" },
    },
}
