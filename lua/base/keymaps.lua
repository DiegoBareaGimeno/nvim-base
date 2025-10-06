local keymap = vim.keymap.set

local function nkey(lhs, rhs, desc)
  keymap('n', lhs, rhs, { desc = desc, silent = true })
end

-- General
nkey('<leader>w', ':w<CR>', 'Guardar archivo')
nkey('<leader>q', ':q<CR>', 'Cerrar ventana')
nkey('<leader>Q', ':qa!<CR>', 'Salir sin guardar')

-- Ventanas
nkey('<leader>sv', '<C-w>v', 'División vertical')
nkey('<leader>sh', '<C-w>s', 'División horizontal')
nkey('<leader>se', '<C-w>=', 'Igualar tamaño')
nkey('<leader>sx', ':close<CR>', 'Cerrar ventana actual')

-- Navegación de buffers
nkey('<S-l>', ':bnext<CR>', 'Siguiente buffer')
nkey('<S-h>', ':bprevious<CR>', 'Buffer anterior')
nkey('<leader>bd', ':bdelete<CR>', 'Cerrar buffer actual')

-- Telescope
nkey('<leader>ff', require('telescope.builtin').find_files, 'Buscar archivos')
nkey('<leader>fg', require('telescope.builtin').live_grep, 'Grep en proyecto')
nkey('<leader>fb', require('telescope.builtin').buffers, 'Buffers abiertos')
nkey('<leader>fh', require('telescope.builtin').help_tags, 'Buscar en ayuda')

-- Git
nkey('<leader>gb', require('gitsigns').toggle_current_line_blame, 'Blame en línea')
nkey(']c', require('gitsigns').next_hunk, 'Siguiente hunk')
nkey('[c', require('gitsigns').prev_hunk, 'Hunk anterior')

-- Explorador de archivos utilizando netrw
nkey('<leader>e', vim.cmd.Ex, 'Abrir netrw')

-- Otros atajos útiles
nkey('<leader>t', ':tabnew<CR>', 'Nueva pestaña')
nkey('<leader>tn', ':tabnext<CR>', 'Pestaña siguiente')
nkey('<leader>tp', ':tabprevious<CR>', 'Pestaña anterior')
nkey('<leader>tc', ':tabclose<CR>', 'Cerrar pestaña')
