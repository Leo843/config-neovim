local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.tsserver.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
}
lspconfig.eslint.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider  = true
  end,
}
lspconfig.clangd.setup {}
