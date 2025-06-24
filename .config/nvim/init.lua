
require('plugins')
require('settings')
require('keybinds')
require('commands')

vim.api.nvim_create_augroup('tex_wrap', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  command = 'setlocal wrap linebreak textwidth=80',
  group = 'tex_wrap',
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "javascriptreact" },
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})
