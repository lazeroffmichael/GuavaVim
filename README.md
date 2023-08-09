# Features

## 
- [x] File tree
- [ ] Fuzzy finding over everything
- [x] Colorscheme
- [x] Markdown preview
- [x] Context aware commenting 
- [ ] Treesitter
- [x] Harpoon
- [ ] LSP
- [ ] Completion
- [ ] Snippets
- [ ] Git integration
- [ ] Debugging
- [ ] Autocommands

# Structure

```
.
├── README.md
├── init.lua                -- main entry point
├── lazy-lock.json          -- maintain plugin versions
├── lua
│   ├── core                -- "core" functionality loaded first
│   │   ├── init.lua        -- requires all files in this module
│   │   ├── keymaps.lua     -- remaps
│   │   └── options.lua     -- general vim options
│   ├── install-lazy.lua    -- installs the lazy package manager
│   └── plugins             -- plugin specs are already required by lazy
│       ├── neotree.lua     -- example plugin spec
│       ├── telescope.lua   -- example plugin spec
│       ├── ...
│       └── theme           -- example submodule
│           ├── init.lua
│           └── nord.lua
└── stylua.toml
```

# Credits

These sources have helped me make this config:
- https://github.com/Alexis12119/nvim-config
- https://www.youtube.com/watch?v=aqlxqpHs-aQ
- https://www.lazyvim.org/
- https://www.youtube.com/watch?v=w7i4amO_zaE&t=939s
