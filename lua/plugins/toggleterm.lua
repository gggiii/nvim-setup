local tt = require("toggleterm")

--alow <leader>tt to close terminal window
vim.api.nvim_create_autocmd("TermEnter term://*toggleterm#*", {
    command = 'tnoremap <silent><leader>; <Cmd>exe v:count1 . "ToggleTerm"<CR>'
})

tt.setup{
    direction = "float"
}
