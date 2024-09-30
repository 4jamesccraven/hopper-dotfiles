return {
  'SirVer/ultisnips',
  config = function()
    vim.g.UltiSnipsSnippetDirectories = { '/home/acc.cravenj6/.config/nvim/ulti' }
    vim.g.UltiSnipsExpandTrigger = '<tab>'
    vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
    vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    vim.g.UltiSnipsVerbose = 1
  end
}
