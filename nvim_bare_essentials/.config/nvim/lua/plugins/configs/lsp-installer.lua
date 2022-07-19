local present, lspInstaller = pcall(require, "nvim-lsp-installer")

if not present then
   return
end

lspInstaller.setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
