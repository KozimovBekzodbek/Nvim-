-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kozimov/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/kozimov/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/kozimov/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/kozimov/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kozimov/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\foffsets\1\0\4\ttext\rExplorer\rfiletype\rNvimTree\15text_align\tleft\fpadding\3\1\1\0\24\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\30\16diagnostics\1\23right_trunc_marker\b\fsort_by\aid\22left_trunc_marker\b\15close_icon\b\18modified_icon\b●\22buffer_close_icon\a:)\25middle_mouse_command\0\23left_mouse_command\14buffer %d\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\fnumbers\tnone\27always_show_bufferline\2\25enforce_regular_tabs\2\20separator_style\tthin\24persist_buffer_sort\2\26show_duplicate_prefix\1\24show_tab_indicators\2\28show_buffer_close_icons\2\22show_buffer_icons\2\foffsets\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lint"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nE\0\0\4\0\3\0\b6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0K\0\1\0\20nvim-treesitter\frequire\npcall\0" },
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/kozimov/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\foffsets\1\0\4\ttext\rExplorer\rfiletype\rNvimTree\15text_align\tleft\fpadding\3\1\1\0\24\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\30\16diagnostics\1\23right_trunc_marker\b\fsort_by\aid\22left_trunc_marker\b\15close_icon\b\18modified_icon\b●\22buffer_close_icon\a:)\25middle_mouse_command\0\23left_mouse_command\14buffer %d\24right_mouse_command\16bdelete! %d\18close_command\16bdelete! %d\fnumbers\tnone\27always_show_bufferline\2\25enforce_regular_tabs\2\20separator_style\tthin\24persist_buffer_sort\2\26show_duplicate_prefix\1\24show_tab_indicators\2\28show_buffer_close_icons\2\22show_buffer_icons\2\foffsets\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nE\0\0\4\0\3\0\b6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0K\0\1\0\20nvim-treesitter\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
