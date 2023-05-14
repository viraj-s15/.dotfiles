iron.setup{
  config = {
    repl_definition = {
      -- custom repl that loads the current file
      haskell = {
        command = function(meta)
          local filename = vim.api.nvim_buf_get_name(meta.current_bufnr)
          return { 'cabal', 'v2-repl', filename}
        end
      }
    },
  },
}
