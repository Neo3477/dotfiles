require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "lua",
        "markdown",
        "markdown_inline",
        "html",
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true
    },
})