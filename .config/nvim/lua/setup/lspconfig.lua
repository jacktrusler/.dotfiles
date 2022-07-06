-- Setup lspconfig.
require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Each lsp server you've enabled.
require('lspconfig')['sumneko_lua'].setup {
  capabilities = capabilities,
}
require('lspconfig')['jsonls'].setup {
  capabilities = capabilities
}
require('lspconfig')['tsserver'].setup ({
  capabilities = capabilities
})
require('lspconfig')['solidity_ls'].setup ({
  capabilities = capabilities
})
require('lspconfig')['rust_analyzer'].setup ({
  capabilities = capabilities
})
require('lspconfig')['gopls'].setup ({
  capabilities = capabilities
})
require('lspconfig')['pyright'].setup ({
  capabilities = capabilities
})
require('lspconfig')['yamlls'].setup ({
  capabilities = capabilities
})


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with( vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = false,
  } )

vim.api.nvim_set_keymap("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>",
{noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>",
{noremap = true, silent = true})
