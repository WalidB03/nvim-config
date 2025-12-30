require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "ts_ls", "eslint",
        "tailwindcss",
        "intelephense",
        "lua_ls",
        "pyright",
        "gopls",
        "clangd"
    },
    handlers = {
        function (server_name)
            require("lspconfig")[server_name].setup({})
        end
    }
})

