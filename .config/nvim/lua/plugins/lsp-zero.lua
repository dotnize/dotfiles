local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'html',
    'cssls',
    'bashls',
    'tsserver',
    'rust_analyzer',
--  'sqls',
    'clangd',
    'emmet_ls',
    'gopls',
    'jsonls',
    'yamlls'
})

lsp.setup()
