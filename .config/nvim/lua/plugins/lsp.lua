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
    'taplo',
    'yamlls'
})

-- auto open diagnostics on hover
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

lsp.setup()
