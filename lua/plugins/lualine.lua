require('lualine').setup{
    options = {
        component_separators = {left='', right=''},
        globalstatus = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'filename', {
            'diagnostics',
            sources = {'nvim_lsp'},
            symbols = {error = ' ', warn = ' ', info = ' '},

        }},


        lualine_x = {'lsp_progress'},
        lualine_y = {'filetype'},
    },
    extensions = {'nerdtree', 'toggleterm'}
}
