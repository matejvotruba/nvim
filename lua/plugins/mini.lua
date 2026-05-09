-- https://github.com/nvim-mini/mini.nvim
---@module 'lazy'
---@type LazySpec
return {
  'nvim-mini/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    -- Examples:
    --  - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    --  - sd'   - [S]urround [D]elete [']quotes
    --  - sr)'  - [S]urround [R]eplace [)] [']
    vim.keymap.set({ 'n', 'x' }, 's', '<Nop>')
    vim.keymap.set({ 'n', 'x' }, 'S', '<Nop>')
    require('mini.surround').setup()

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function(args)
      if statusline.is_truncated(args.trunc_width) then return '%l│%2v' end
      return '%2l:%-2v (%p%%)'
    end

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_filename = function()
      if vim.bo.buftype == 'terminal' then return '%t' end -- In terminal always use plain name
      return '%f%m%r'
    end
    require('mini.pairs').setup()
  end,
}
