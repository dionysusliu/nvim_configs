require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    -- ensure installation
    ensure_installed = {
        "lua_ls",
        "clangd",
        "jedi_language_server",
        "cmake",
    },

    automatic_installation = true,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
}

require("lspconfig").clangd.setup {
    capabilities = capabilities,
}

require("lspconfig").jedi_language_server.setup {
    capabilities = capabilities,
}






