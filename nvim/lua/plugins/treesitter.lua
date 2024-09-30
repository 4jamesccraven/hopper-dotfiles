return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = {
                "bash",
                "java",
                "lua",
                "python",
                "rust",
                "vim",
            },
            auto_install = true,
            highlight = {
                enable = true
            },
        }
    end,
}
