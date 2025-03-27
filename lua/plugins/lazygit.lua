-- https://github.com/kdheepak/lazygit.nvim
return {
  'kdheepak/lazygit.nvim',
  lazy = true,
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  dependencies = {
    -- 'nvim-telescope/telescope.nvim', -- optional for telescope plugin
    'nvim-lua/plenary.nvim', -- optional for floating window border decoration
  },
  keys = {
    { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
  },
  -- config = function()
  -- require('telescope').load_extension 'lazygit' -- optional for telescope plugin (must disable lazy loading)
  -- end,
}
