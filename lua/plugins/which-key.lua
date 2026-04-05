-- https://github.com/folke/which-key.nvim
---@module 'lazy'
---@type LazySpec
return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  ---@module 'which-key'
  ---@type wk.Opts
  opts = {
    delay = 200,
    expand = 1,
    icons = {
      -- Enable mappings if nerd font
      mappings = vim.g.have_nerd_font,
      -- If nerd font: Set icons.keys to the default which-key.nvim defined icons, otherwise define a string table
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },
    -- Document existing key chains
    spec = {
      { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
      { '<leader>b', group = '[B]uffer' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '[', group = 'Prev' },
      { ']', group = 'Next' },
      { 'g', group = 'Goto' },
      { 's', group = 'Surround' },
    },
  },
}
