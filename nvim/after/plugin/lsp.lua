local lsp = require("lsp-zero")

lsp.preset('recommended')

lsp.ensure_installed({
    'bashls',
    'cssls',
    'cssmodules_ls',
    'docker_compose_language_service',
    'dockerls',
    'eslint',
    'golangci_lint_ls',
    'gopls',
    'gradle_ls',
    'groovyls',
    'html',
    'jsonls',
    'lua_ls',
    'pylsp',
    'rust_analyzer',
    'terraformls',
    'tflint',
    'tsserver',
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup()
