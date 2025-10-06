# Base extensible de Neovim

Esta configuración busca ofrecer una base moderna y extensible para Neovim, sin depender de un stack tecnológico específico. Incluye ajustes sensatos, atajos de teclado coherentes y un conjunto reducido de plugins que mejoran la experiencia diaria en cualquier tipo de proyecto.

## Estructura

```
.
├── init.lua
└── lua
    ├── base
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
        └── init.lua
```

- `init.lua`: punto de entrada, carga opciones, atajos y plugins.
- `lua/base/options.lua`: opciones básicas de Vim.
- `lua/base/keymaps.lua`: atajos de teclado.
- `lua/base/lazy.lua`: bootstrap y configuración de [lazy.nvim](https://github.com/folke/lazy.nvim).
- `lua/plugins/init.lua`: lista de plugins y sus ajustes.

## Plugins incluidos

| Plugin | Propósito |
| ------ | --------- |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Gestor de plugins.
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Tema por defecto.
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Ayuda para recordar atajos.
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Búsquedas rápidas de archivos, texto, buffers, etc.
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Resaltado de sintaxis y plegado inteligente.
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Barra de estado personalizable.
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Integración con Git.
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Comentado rápido.
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Inserción automática de pares (paréntesis, comillas, etc.).
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Utilidades usadas por otros plugins.
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | Iconos opcionales para la UI.

## Instalación

1. Clona este repositorio en tu máquina:
   ```bash
   git clone https://github.com/tu-usuario/nvim-base.git
   ```
2. Copia su contenido a tu configuración de Neovim (o usa `NVIM_APPNAME` para aislarla):
   ```bash
   mkdir -p ~/.config/nvim
   cp -r nvim-base/* ~/.config/nvim
   ```

   > Alternativamente, puedes exportar `NVIM_APPNAME=nvim-base` y copiar la carpeta dentro de `~/.config` con ese nombre para mantener varias configuraciones.
3. Inicia Neovim. La primera vez lazy.nvim descargará automáticamente el gestor y los plugins declarados.
4. Ejecuta `:checkhealth` si necesitas verificar dependencias externas (por ejemplo ripgrep para Telescope).

## Atajos principales

Todos los atajos usan la tecla `<Space>` como _leader_.

### Gestión general

| Atajo | Acción |
| ----- | ------ |
| `<leader>w` | Guardar archivo actual.
| `<leader>q` | Cerrar la ventana actual.
| `<leader>Q` | Salir sin guardar.
| `<leader>sv` | Dividir ventana verticalmente.
| `<leader>sh` | Dividir ventana horizontalmente.
| `<leader>se` | Igualar tamaño de ventanas.
| `<leader>sx` | Cerrar ventana actual.
| `<leader>bd` | Cerrar buffer actual.
| `<S-l>` / `<S-h>` | Siguiente / anterior buffer.
| `<leader>t` | Abrir nueva pestaña.
| `<leader>tn` / `<leader>tp` | Siguiente / anterior pestaña.
| `<leader>tc` | Cerrar pestaña actual.
| `<leader>e` | Abrir explorador con netrw.

### Telescope

| Atajo | Acción |
| ----- | ------ |
| `<leader>ff` | Buscar archivos.
| `<leader>fg` | Búsqueda en texto (requiere `ripgrep`).
| `<leader>fb` | Listar buffers abiertos.
| `<leader>fh` | Buscar en la ayuda.

### Git (gitsigns)

| Atajo | Acción |
| ----- | ------ |
| `<leader>gb` | Alternar blame en línea.
| `]c` / `[c` | Ir al siguiente / anterior *hunk*.

### Comentarios

| Atajo | Acción |
| ----- | ------ |
| `gc` | Alternar comentario en modo normal o visual.
| `gb` | Alternar comentario por bloque.

## Personalización

- Ajusta opciones generales en `lua/base/options.lua`.
- Añade o quita atajos en `lua/base/keymaps.lua`.
- Registra nuevos plugins creando archivos dentro de `lua/plugins/` o añadiéndolos al listado en `lua/plugins/init.lua`.
- Cambia el tema por otro añadiendo el plugin correspondiente y modificando el `vim.cmd.colorscheme` en `lua/plugins/init.lua`.

## Requisitos externos recomendados

- [ripgrep](https://github.com/BurntSushi/ripgrep) para las búsquedas de Telescope.
- `git` para la instalación automática de plugins.

¡Listo! A partir de aquí puedes extender la configuración según las necesidades de cada proyecto.
