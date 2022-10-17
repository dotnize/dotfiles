local lsp = require('lsp-zero')

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
    'taplo',
    'yamlls'
})

lsp.preset('recommended')

lsp.setup()
