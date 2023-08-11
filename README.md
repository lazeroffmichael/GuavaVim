# 🥳 GuavaVim

A custom neovim config with all the fixings. Always a work in progress 😎

## 🔭 Features

| Feature                   | Handler                                                                                                                                   |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| ✅ Plugin Management      | [lazy.nvim](https://github.com/folke/lazy.nvim)                                                                                           |
| ✅ Fuzzy Finding          | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                                                                        |
| ✅ LSP Configuration      | [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) |
| ✅ LSP Server Installer   | [mason.nvim](https://github.com/williamboman/mason.nvim)                                                                                  |
| ✅ Autocomplete Engine    | [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                                                                           |
| ✅ Snippet Engine         | [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                                                                                            |
| ✅ Highlighting + AST     | [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                                                                     |
| ✅ Pinned File Navigation | [harpoon](https://github.com/ThePrimeagen/harpoon)                                                                                        |
| ✅ Git                    | [vim-fugitive](https://github.com/tpope/vim-fugitive) + [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                       |
| ✅ Fast Movements         | [flash.nvim](https://github.com/folke/flash.nvim)                                                                                         |
| ✅ Formatting             | [formatter.nvim](https://github.com/mhartington/formatter.nvim)                                                                           |
| ✅ Linting                | [nvim-lint](https://github.com/mfussenegger/nvim-lint)                                                                                    |

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

### 🌕 Installation Notes

```
git clone https://github.com/lazeroffmichael/GuavaVim.git ~/.config/nvim
```

Install the language servers, formatters, linters, and debuggers:

```
:MasonInstallAll
```

Check `:Mason` to check that you have tools installed.

For formatting to work, there needs to be a formatter on your path available. You can
use formatters installed through outside package managers, or you can use the formatters
installed with Mason.

To use the formatters installed with Mason, add Mason's bin to path in your shell's .rc file:

```
export PATH="$PATH:$HOME/.local/share/nvim/mason/bin"
```

You can run `which stylua` and make sure that it registers that path.

### 🎥 Credits

Thank you to these sources!

- ⭐️ [LazyVim](https://www.lazyvim.org/)
- ⭐️ [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- ⭐️ [Alexis12119](https://github.com/Alexis12119/nvim-config)
- ⭐️ [Elijah Manor](https://www.youtube.com/@ElijahManor)
- ⭐️ [ThePrimeagen](https://www.youtube.com/channel/UC8ENHE5xdFSwx71u3fDH5Xw)
- ⭐️ [TJ DeVries](https://www.youtube.com/c/tjdevries)
