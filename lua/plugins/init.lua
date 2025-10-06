return {
  {
    'nvim-lua/plenary.nvim',
    lazy = true,
  },
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    version = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      defaults = {
        prompt_prefix = ' ',
        selection_caret = ' ',
        path_display = { 'smart' },
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'html',
        'javascript',
        'json',
        'lua',
        'markdown',
        'python',
        'rust',
        'typescript',
        'yaml',
      },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'auto',
        section_separators = '',
        component_separators = '',
      },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
      signs = {
        add = { text = '│' },
        change = { text = '│' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  {
    'numToStr/Comment.nvim',
    keys = {
      { 'gc', mode = { 'n', 'v' }, desc = 'Toggle comentario' },
      { 'gb', mode = { 'n', 'v' }, desc = 'Toggle comentario por bloque' },
    },
    opts = {},
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('tokyonight-night')
    end,
  },
}
