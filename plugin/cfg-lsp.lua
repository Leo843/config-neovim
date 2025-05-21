require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config
lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

vim.lsp.enable('clangd')

vim.g.markdown_fenced_languages = { "ts=typescript" }
vim.lsp.enable('denols')

vim.lsp.enable('pyright')
