return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "quangnguyen30192/cmp-nvim-ultisnips",
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
          snippet = {
            expand = function(args)
              vim.fn["UltiSnips#Anon"](args.body)
            end,
          },
          mapping = cmp.mapping.preset.insert ({
             ['<C-n>'] = cmp.mapping.select_next_item(),
             ['<C-p>'] = cmp.mapping.select_prev_item(),
             ['<C-y>'] = cmp.mapping.confirm({ select = true }),
          }),
          sources = cmp.config.sources ({
            { name = 'nvim_lsp'},
            { name = 'buffer'},
            { name = 'path'},
            { name = 'ultisnips'},
          })
        })
    end,
}
