return {
    "neovim/nvim-lspconfig",
    config = function()
        --require('lspconfig').clangd.setup{
        --    cmd = {"clangd"},
        --    root_dir = require('lspconfig/util').root_pattern('build/compile_commands/json', '.git'),
        --}
        require('lspconfig').pyright.setup{}
        require('lspconfig').rust_analyzer.setup{}
    end,
}

