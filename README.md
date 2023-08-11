# 🥳 GuavaVim

A custom neovim config with all the fixings.

## 🔭 Features

| Feature                   | Handler                                                                                                                                   |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| ✅ Plugin Management      | [lazy.nvim](https://github.com/folke/lazy.nvim)                                                                                           |
| ✅ File Explorer          | [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                                                                           |
| ✅ Fuzzy Finding          | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                                                                        |
| ✅ LSP Configuration      | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) |
| ✅ LSP Server Installer   | [mason.nvim](https://github.com/williamboman/mason.nvim)                                                                                  |
| ✅ Autocomplete Engine    | [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                                                                           |
| ✅ Snippet Engine         | [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                                                                                            |
| ✅ Highlighting + AST     | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                                                                     |
| ✅ Pinned File Navigation | [harpoon](https://github.com/ThePrimeagen/harpoon)                                                                                        |
| ✅ Git                    | [vim-fugitive](https://github.com/tpope/vim-fugitive) + [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                       |
| ✅ Fast Movements         | [flash.nvim](https://github.com/folke/flash.nvim)                                                                                         |

...and more!

## 🗺️ Structure

```
.
├── README.md
├── init.lua                     -- main entry point
├── lazy-lock.json
├── lua
│   ├── core                     -- base vim configuration
│   │   ├── autocommands.lua
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   ├── options.lua
│   │   └── utils.lua
│   ├── install-lazy.lua         -- lazy setup
│   └── plugins                  -- plugin tables are auto sourced
│       ├── cmp.lua
│       ├── comment.lua
│       ├── ...
│       ├── lsp
│       │   ├── configs          -- server configs go here
│       │   │   ├── lua_ls.lua
│       │   │   └── ...
│       │   ├── handlers.lua
│       │   └── init.lua
│       ├── theme
│       │   ├── configs          -- colorscheme configs go here
│       │   │   ├── ayu.lua
│       │   │   └── ...
│       │   └── init.lua
│       ├── todo.lua
│       ├── ...
│       └── whichkey.lua
└── stylua.toml
```

### 🎥 Credits

Thank you to these sources:

- ⭐️ [LazyVim](https://www.lazyvim.org/)
- ⭐️ [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- ⭐️ [Alexis12119](https://github.com/Alexis12119/nvim-config)
- ⭐️ [Elijah Manor](https://www.youtube.com/@ElijahManor)
- ⭐️ [ThePrimeagen](https://www.youtube.com/channel/UC8ENHE5xdFSwx71u3fDH5Xw)
