-- Clipboard
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.list = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Search config
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Vertical split
vim.o.splitright = true

-- Transparent Background
vim.cmd.highlight({ "Normal", "guibg=NONE", "ctermbg=NONE" })
vim.cmd.highlight({ "NonText", "guibg=NONE", "ctermbg=NONE" })

-- Launch configuration
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      require("telescope.builtin").find_files()
      end
  end
})

-- Remember buffer location
local lastplace = vim.api.nvim_create_augroup("LastPlace", {})
vim.api.nvim_clear_autocmds({ group = lastplace })
vim.api.nvim_create_autocmd("BufReadPost", {
  group = lastplace,
  pattern = { "*" },
  desc = "remember last cursor place",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Colorscheme
vim.cmd [[set background=dark]]
vim.cmd [[colorscheme gruvbox]]

require("config.lazy")
