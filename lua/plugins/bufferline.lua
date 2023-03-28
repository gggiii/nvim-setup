require("bufferline").setup{
    options = {
        mode = "tabs",
        diagnostics = "nvim_lsp",
        separator_style = "padded_slant",
        underline = "always",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center"
            }
        }
    },
}
