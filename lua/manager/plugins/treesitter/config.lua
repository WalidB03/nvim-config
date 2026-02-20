require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "astro", "bash", "blade", "c", "cpp",
        "css", "go", "html", "javascript", "lua",
        "markdown", "markdown_inline", "php","python", "query",
        "sql", "typescript", "tsx", "vim", "vimdoc",
    },
    sync_install = false,
    auto_install = false,
    highlight = {
        disable = { "dockerfile" },
        enable = true,
        additional_vim_regex_highlighting = false
    },
    indent = {
        enable = true,
    }
}
