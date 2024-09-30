return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.api.nvim_create_user_command('FF', 'Telescope find_files', {})
        vim.cmd('cnoreabbrev ff FF')
        vim.api.nvim_create_user_command('FG', 'Telescope live_grep', {})
        vim.cmd('cnoreabbrev fg FG')
    end,
}
