-- https://github.com/folke/todo-comments.nvim
---@module 'lazy'
---@type LazySpec
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  ---@module 'todo-comments'
  ---@type TodoOptions
  opts = { signs = false },
}
