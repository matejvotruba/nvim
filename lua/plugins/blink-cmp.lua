-- https://github.com/saghen/blink.cmp
---@module 'lazy'
---@type LazySpec
return {
  'saghen/blink.cmp',
  version = '1.*',
  dependencies = {
    -- Maybe add some snippets?
    -- 'rafamadriz/friendly-snippets',
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      -- All presets have the following mappings:
      -- <tab>/<s-tab>: move to right/left of your snippet expansion
      -- <c-space>: Open menu or open docs if already open
      -- <c-n>/<c-p> or <up>/<down>: Select next/previous item
      -- <c-e>: Hide menu
      -- <c-k>: Toggle signature help
      preset = 'super-tab',
      -- TODO: fix snippets and TAB 
    },
    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono',
    },
    completion = {
      documentation = {
        auto_show = false,
        auto_show_delay_ms = 500,
      },
    },
    sources = {
      default = {
        'lsp',
        'path',
        'snippets',
        'buffer',
      },
      per_filetype = {
        lua = { 'lazydev', inherit_defaults = true },
      },
      providers = {
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink',
          -- make lazydev completions top priority
          score_offset = 100,
        },
      },
    },

    fuzzy = { implementation = 'prefer_rust_with_warning' },

    -- Shows a signature help window while you type arguments for a function
    signature = { enabled = true },
  },

  opts_extend = { 'sources.default' },
}
