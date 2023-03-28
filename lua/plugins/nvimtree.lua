require("nvim-tree").setup({
    disable_netrw = true,
    open_on_setup = true,
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },

    },
    filters = {
        dotfiles = false,
    },
    git = {
        ignore = false,
    },
    renderer = {
        icons = {
            show = {
                git = true,
                folders = true,
                files = true,
            }
        },
        add_trailing = true,
        indent_markers = {
            enable = true,
        }
    }
})
