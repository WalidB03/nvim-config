-----------
-- setup --
-----------

require("mason").setup({ ui = { border = "rounded" } })

require("mason-lspconfig").setup({
    ensure_installed = {
        "ts_ls", "eslint",
        "astro",
        "tailwindcss",
        "intelephense",
        "lua_ls",
        "pyright",
        "gopls",
        "clangd",
        "marksman"
    },
    handlers = {
        function (server_name)
            require("lspconfig")[server_name].setup({})
        end
    }
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


--------------
-- keymaps  --
--------------

-- go to definition --
----------------------
local function go_to_definition()
    vim.lsp.buf.definition()
end

-- find references --
---------------------
local function find_references()
    vim.lsp.buf.references()
end

-- rename symbols --
--------------------
local function rename_symbols()
    vim.lsp.buf.rename()
end

-- view diagnostics --
----------------------
local function view_diagnostics()
    vim.diagnostic.open_float()
end

-- view hover --
----------------------
local function view_hover()
    vim.lsp.buf.hover({border = "rounded"})
end

-- signature help --
--------------------
local function signature_help()
    vim.lsp.buf.signature_help({border = "rounded"})
end


-- binding --
-------------
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, remap = false }
        vim.keymap.set("n", "<leader>gd", go_to_definition, opts)
        vim.keymap.set("n", "<leader>gr", find_references, opts)
        vim.keymap.set("n", "<leader>rn", rename_symbols, opts)
        vim.keymap.set("n", "<leader>vd", view_diagnostics, opts)
        vim.keymap.set("n", "<leader>vh", view_hover, opts)
        vim.keymap.set("i", "<C-h>", signature_help, opts)
    end
})
