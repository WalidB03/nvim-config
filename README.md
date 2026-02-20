# Neovim v0.11 Configuration Setup

This is my personal configuration files for Neovim `v0.11`. Inspired by ThePrimeAgen's setup and tailored to integrate in my zen-full Arch Linux setup with SwayWM and WezTerm.

## Features

- **Modular Structure**: Organized into separate modules for behavior, keymaps, plugin management, and styling
- **Plugin Management**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management
- **LSP Support**: Pre-configured with multiple language servers via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [mason.nvim](https://github.com/mason-org/mason.nvim)
- **Syntax Highlighting**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) integration for advanced language parsing
- **Fuzzy Finding**: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) integration for efficient file navigation and grep operations
- **Theme**: [rose-pine](https://github.com/rose-pine/neovim) theme with custom styling

## File tree

```bash
./
├── lua/
│   ├── behavior/
│   │   ├── autocommands.lua
│   │   └── init.lua
│   ├── keymaps/
│   │   └── init.lua
│   └── manager/
│       ├── plugins/
│       │   ├── lspconfig/
│       │   │   ├── config.lua
│       │   │   └── init.lua
│       │   ├── rose-pine/
│       │   │   ├── config.lua
│       │   │   └── init.lua
│       │   ├── telescope/
│       │   │   ├── config.lua
│       │   │   └── init.lua
│       │   └── treesitter/
│       │       ├── config.lua
│       │       └── init.lua
│       └── init.lua
└── init.lua
```

## Installation

1. **Backup your current config** (if any):
``` Bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. **Clone this repository**:
``` Bash
git clone https://github.com/WalidB03/nvim-config ~/.config/nvim
```

3. **Start Neovim**:
``` Bash
nvim
```

The first startup will automatically install `lazy.nvim` and all configured plugins.

