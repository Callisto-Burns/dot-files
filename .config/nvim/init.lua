
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
