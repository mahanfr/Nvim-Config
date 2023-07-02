# Nvim Configuration

## How to use
- Install neovim
- Clone Repository into ```~/.config/nvim```
- install packer on yor system
  if you are on linux you can run this command or refer to [packer.nvim](https://github.com/wbthomason/packer.nvim) for more information

  ``` bash
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```
- open neovim and run ```:PackerSync``` and ```:PackerInstall``` to install all required packages

## KeyMaps
you can change keymaps in ```$CONFIG_DIR/lua/remap.lua```
``` lua
vim.g.mapleader = " "
-- Open File explorer
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

-- Move lines in Virtual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join Line Bellow without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Jump lines and put cursor in the middle of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move between patterns and keep cursor in the middel of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste by keeping replaced token in buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- remove highlighted keywords (exit search mode)
vim.keymap.set("n", "<leader>/", ":noh<CR>")

-- create newline on normal mode
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

-- add space in normal mode
vim.keymap.set("n", "<leader><leader>", "i<space><esc>")

-- vim diagnostic float toggle
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
```

All Plugin Specific keymaps are in ```$CONFIG_DIR/after/plugin/remap```

```lua
-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

```

## Links
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [rose-pine](https://github.com/rose-pine/neovim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-tree-playground](https://github.com/nvim-treesitter/playground)
- [undotree](https://github.com/mbbill/undotree)
- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
