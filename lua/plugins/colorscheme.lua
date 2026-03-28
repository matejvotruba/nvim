-- https://github.com/folke/tokyonight.nvim
---@module 'lazy'
---@type LazySpec
return {
  'folke/tokyonight.nvim',
  priority = 1000, --Load this before all the other start plugins.
  config = function()
    vim.cmd.colorscheme 'tokyonight-moon'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
