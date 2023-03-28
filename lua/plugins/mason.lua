require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = {"tsserver", "tailwindcss", "html","cssls","dotls", "sumneko_lua", "jsonls","prismals","sqlls", "yamlls"},
})
