		


		

local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then
    return
end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Typescirpt
nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" }
}


nvim_lsp.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            }
        }
    }
}
nvim_lsp.tailwindcss.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
nvim_lsp.prismals.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

nvim_lsp.emmet_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.r_language_server.setup{
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.clangd.setup{
    on_attach = on_attach,
    capabilities = capabilities
}

nvim_lsp.pyright.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
    underline = false,
}
)
