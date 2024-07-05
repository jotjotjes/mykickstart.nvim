-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({

  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  -- Use `opts = {}` to force a plugin to be loaded.
  --  This is equivalent to:
  --    require('Comment').setup({})

  { 'numToStr/Comment.nvim', opts = {} }, -- "gc" to comment visual regions

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'kickstart/plugins/gitsigns', -- git in the left column
  require 'kickstart/plugins/which-key', -- show key map chains
  require 'kickstart/plugins/telescope', -- fuzzy search all the things
  require 'kickstart/plugins/lspconfig', -- defaults for lsp servers
  require 'kickstart/plugins/conform', -- auto format
  require 'kickstart/plugins/cmp', -- auto completions
  require 'kickstart/plugins/todo-comments', -- highlight todo, notes, etc in comments
  require 'kickstart/plugins/mini', -- collection of helper plugins
  require 'kickstart/plugins/treesitter', -- syntax stuff

  -- NOTE: The most important plugin: the colorscheme
  -- require 'kickstart/plugins/tokyonight',

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  require 'kickstart.plugins.debug', -- debugger support
  require 'kickstart.plugins.indent_line', -- make indentation visible
  require 'kickstart.plugins.lint', -- linter
  require 'kickstart.plugins.autopairs', -- auto insert pairs like (), "", []
  require 'kickstart.plugins.neo-tree', -- file browser

  -- NOTE: The import below can automatically add your own plugins, configuration, etc
  --   from `lua/custom/plugins/*.lua`
  --   This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
