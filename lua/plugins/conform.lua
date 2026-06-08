-- https://github.com/stevearc/conform.nvim
---@module 'lazy'
---@type LazySpec
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function() require('conform').format { async = true, lsp_format = 'fallback' } end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  ---@module 'conform'
  ---@type conform.setupOpts
  opts = {
    notify_no_formatters = true,
    notify_on_error = true,
    -- format_on_save = function(bufnr)
    --   -- Disable "format_on_save lsp_fallback" for languages that don't
    --   -- have a well standardized coding style. You can add additional
    --   -- languages here or re-enable it for the disabled ones.
    --   local disable_filetypes = { c = true, cpp = true }
    --   if disable_filetypes[vim.bo[bufnr].filetype] then
    --     return nil
    --   else
    --     return {
    --       timeout_ms = 500,
    --       lsp_format = 'fallback',
    --     }
    --   end
    -- end,
    -- TODO: Add oxfmt once it is stable enough (supporting important plugins)
    -- formatters_by_ft = {
    --   lua = { 'stylua' },
    --   astro = { 'prettierd', 'prettier', stop_after_first = true },
    --   html = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    --   css = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    --   javascript = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    --   jsx = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    --   typescript = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    --   tsx = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    --   json = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    --   yaml = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    -- },
    formatters_by_ft = {
      lua = { 'stylua' },
      astro = { 'prettierd', 'prettier', stop_after_first = true },
      html = { 'prettierd', 'prettier', stop_after_first = true },
      css = { 'prettierd', 'prettier', stop_after_first = true },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      jsx = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      tsx = { 'prettierd', 'prettier', stop_after_first = true },
      json = { 'prettierd', 'prettier', stop_after_first = true },
      yaml = { 'prettierd', 'prettier', stop_after_first = true },
    },
  },
}
