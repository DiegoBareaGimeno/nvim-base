-- Set <space> as the leader key as early as possible
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('base.options')
require('base.keymaps')

require('base.lazy')
