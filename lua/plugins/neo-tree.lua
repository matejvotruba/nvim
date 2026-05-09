-- https://github.com/nvim-neo-tree/neo-tree.nvim
---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    -- { '<leader>e', ':Neotree reveal<CR>', desc = 'NeoTree', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        never_show = {
          '.git'
        }
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          -- ['<leader>e'] = 'close_window',
          ['l'] = 'open',
          ['h'] = 'close_node',
          ['<space>'] = 'none',
          ['Y'] = {
            function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              vim.fn.setreg('+', path, 'c')
            end,
            desc = 'Copy Path to Clipboard',
          },
          ['O'] = {
            function(state) require('lazy.util').open(state.tree:get_node().path, { system = true }) end,
            desc = 'Open with System Application',
          },
          ['P'] = { 'toggle_preview', config = { use_float = false } },
        },
      },
    },

    -- event_handlers = function(_, event_handlers)
    --   local function on_move(data)
    --     Snacks.rename.on_rename_file(data.source, data.destination)
    --   end
    --   local events = require 'neo-tree.events'
    --   vim.list_extend(event_handlers, {
    --     { event = events.FILE_MOVED, handler = on_move },
    --     { event = events.FILE_RENAMED, handler = on_move },
    --   })
    -- end,
  },
}
