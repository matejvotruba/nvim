---@module 'lazy'
---@type LazySpec
return {
  -- https://github.com/fladson/vim-kitty
  {
    'fladson/vim-kitty',
    ft = 'kitty',
  },

  -- https://github.com/knubie/vim-kitty-navigator
  {
    'knubie/vim-kitty-navigator',
    init = function() vim.g.kitty_navigator_password = 'vim-kitty-navigator-45897' end,
  },
}
