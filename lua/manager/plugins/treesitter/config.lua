require("nvim-treesitter").install {
    "astro", "bash", "blade", "c", "cpp",
    "css", "go", "html", "javascript", "lua",
    "markdown", "markdown_inline", "php", "php_only", "python", "query",
    "sql", "typescript", "tsx", "vim", "vimdoc",
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "astro", "bash", "blade", "c", "cpp",
        "css", "go", "html", "javascript", "javascriptreact", "lua",
        "markdown", "markdown_inline", "php", "php_only", "python", "query",
        "sql", "typescript", "tsx", "vim", "vimdoc",
    },
    callback = function()
        vim.treesitter.start()
    end,
})

