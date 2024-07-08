return {
  {
    'jakewvincent/mkdnflow.nvim',
    config = function()
      require('mkdnflow').setup {
        -- Config goes here; leave blank for defaults
        to_do = {
          symbols = { ' ', '.', 'o', 'X' },
        },
      }
    end,
  },
}
