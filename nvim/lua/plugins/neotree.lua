return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.api.nvim_create_user_command('NT', 'Neotree toggle', {})
        vim.cmd('cnoreabbrev nt NT')

        -- close if last open
        require("neo-tree").setup({
          close_if_last_window = true,
        })
    end,
}
