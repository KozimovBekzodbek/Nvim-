# ⚡ Neovim Config (Lua)

This repository contains my personal Neovim configuration built with Lua and packer.nvim.
The setup focuses on performance, minimal UI, and a modular plugin architecture.

---

# 🚀 Installation

## 1️⃣ Clone config

```bash
git clone https://github.com/KozimovBekzodbek/Nvim-.git ~/.config/nvim
```

---

## 2️⃣ Launch Neovim

```bash
nvim
```

---

## 3️⃣ Install plugins

```vim
:PackerSync
```

Restart Neovim after installation.

---

# 📁 Structure

```
nvim/
├── init.lua                # Entry point
├── lua/
│   └── surprise/
│       ├── init.lua        # Core loader
│       ├── set.lua         # Options
│       ├── remap.lua       # Keymaps
│       ├── packer.lua      # Plugin manager
│       └── lualine.lua     # Statusline config
│
├── after/
│   └── plugin/             # Plugin configurations
│       ├── autopairs.lua
│       ├── colors.lua
│       ├── comment.lua
│       ├── format_lint.lua
│       ├── harpoon.lua
│       ├── lsp.lua
│       ├── nvim-tree.lua
│       ├── telescope.lua
│       └── undotree.lua
│
└── plugin/
    └── packer_compiled.lua
```

---

# 🎯 Purpose

This configuration is designed to:

* Provide a fast and distraction-free coding environment
* Deliver IDE-like features via LSP and Treesitter
* Improve navigation and search productivity
* Maintain modular and easily extendable Lua architecture

---

# 🧰 Features

* 📦 Plugin management with packer.nvim
* 🔎 Telescope fuzzy search
* 🌳 Treesitter highlighting
* 📁 Nvim-tree file explorer
* 🎨 Rose-pine colorscheme
* ⌨️ Custom keymaps
* 🔧 LSP + formatting setup
* 🧭 Harpoon navigation
* 🕓 Undotree history viewer

---

# 🔄 Update config

```bash
cd ~/.config/nvim
git pull
```

Then:

```vim
:PackerSync
```

---

# ⚠️ Notes

* `packer_compiled.lua` is auto-generated
* Avoid committing cache/session files
* Restart Neovim after major plugin changes

---

# 👤 Author

Bekzodbek Kozimov
