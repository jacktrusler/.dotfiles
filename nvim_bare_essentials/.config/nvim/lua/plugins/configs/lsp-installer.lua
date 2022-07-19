local present, lsp_installer = pcall(require, "nvim-lsp-installer")

if not present then
   return
end

-- only for initial setup, all other servers go in lspconfig.lua
local server_is_found, server = lsp_installer.get_server('sumneko_lua')

if server_is_found then
   if not server:is_installed() then
      print("installing " .. 'sumneko_lua')
      server:install()
   end
end

lsp_installer.setup({
    -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
