-----------
-- setup --
-----------

require("mason").setup({ ui = { border = "rounded" } })

require("mason-lspconfig").setup({
    ensure_installed = {
        "ts_ls", "eslint",
        "astro",
        "intelephense",
        "lua_ls",
        "pyright",
        "gopls",
        "clangd",
        "marksman",
        "svelte"
    },
    handlers = {
        function (server_name)
            require("lspconfig")[server_name].setup({})
        end,
    }
})


-------------
-- binding --
-------------

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, remap = false }
        vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vh", function() vim.lsp.buf.hover({border = "rounded"}) end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help({border = "rounded"}) end, opts)
    end
})


-----------
-- style --
-----------

-- diagnostics border --
------------------------
vim.diagnostic.config({
    float = {
        border = "rounded",
    },
})


