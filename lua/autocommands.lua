-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- console.log @l macro for JS/TS
vim.api.nvim_create_augroup('JSLogMacro', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  group = 'JSLogMacro',
  pattern = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'astro' },
  callback = function()
    vim.fn.setreg('l', "yoconsole.log('^[pa:', ^[pa);^[")
  end,
})
