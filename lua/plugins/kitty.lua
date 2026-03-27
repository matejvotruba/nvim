-- https://github.com/fladson/vim-kitty
return {
  {
    'fladson/vim-kitty',
    ft = 'kitty',
  },
  {
    'knubie/vim-kitty-navigator',
    init = function()
      vim.g.kitty_navigator_password = 'vim-kitty-navigator-45897'
    end,
  },
}
