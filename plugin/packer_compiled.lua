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
local package_path_str = "/home/gabrielld06/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/gabrielld06/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/gabrielld06/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/gabrielld06/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gabrielld06/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
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
  LuaSnip = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["cord.nvim"] = {
    config = { "\27LJ\2\nG\0\2\b\0\2\0\r6\2\0\0009\2\1\2\18\4\0\0\18\5\1\0)\6\1\0+\a\2\0B\2\5\2\v\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\tfind\vstring\\\0\1\n\2\2\0\0166\1\0\0-\3\0\0B\1\2\4X\4\b€-\6\1\0009\b\1\0\18\t\5\0B\6\3\2\15\0\6\0X\a\2€+\6\2\0L\6\2\0E\4\3\3R\4ö\127+\1\1\0L\1\2\0\1À\0À\14workspace\vipairsV\0\1\4\1\3\0\v-\1\0\0\18\3\0\0B\1\2\2\15\0\1\0X\2\2€'\1\0\0X\2\3€'\1\1\0009\2\2\0&\1\2\1L\1\2\0\2À\rfilename\rViewing \19Viewing a fileV\0\1\4\1\3\0\v-\1\0\0\18\3\0\0B\1\2\2\15\0\1\0X\2\2€'\1\0\0X\2\3€'\1\1\0009\2\2\0&\1\2\1L\1\2\0\2À\rfilename\rEditing \19Editing a fileS\0\1\4\1\3\0\v-\1\0\0\18\3\0\0B\1\2\2\15\0\1\0X\2\2€'\1\0\0X\2\3€'\1\1\0009\2\2\0&\1\2\1L\1\2\0\2À\14workspace\16Working on \fWorkingÍ\6\1\0\t\0\29\0!3\0\0\0005\1\1\0003\2\2\0005\3\3\0006\4\4\0'\6\5\0B\4\2\0029\4\6\0045\6\b\0005\a\a\0=\a\t\0065\a\n\0=\3\v\a=\3\f\a=\3\r\a=\3\14\a=\3\15\a=\3\16\a=\3\17\a=\3\18\a=\3\19\a=\a\20\0065\a\22\0003\b\21\0=\b\23\a3\b\24\0=\b\25\a3\b\26\0=\b\27\a=\a\28\6B\4\2\0012\0\0€K\0\1\0\ttext\14workspace\0\fediting\0\fviewing\1\0\3\14workspace\0\fviewing\0\fediting\0\0\vassets\18.interface.ts\14.model.ts\20.interceptor.ts\14.guard.ts\r.pipe.ts\18.directive.ts\16.service.ts\18.component.ts\15.module.ts\1\0\t\r.pipe.ts\0\14.guard.ts\0\20.interceptor.ts\0\14.model.ts\0\18.interface.ts\0\15.module.ts\0\18.component.ts\0\16.service.ts\0\18.directive.ts\0\tidle\1\0\3\ttext\0\vassets\0\tidle\0\1\0\t\17ignore_focus\2\ftimeout\3€ÝÛ\1\fdetails\vIdling\20unidle_on_focus\2\15smart_idle\2\16show_status\2\ftooltip\tðŸ˜´\ticonChttps://media.tenor.com/GOEO_QhhtlYAAAAM/go-to-sleep-anime.gif\fenabled\2\nsetup\tcord\frequire\1\0\3\ticonhhttps://raw.githubusercontent.com/vyfor/icons/refs/heads/master/icons/default/accent/typescript.png\tname\15typescript\ftooltip\15Typescript\0\1\3\0\0\26blacklisted_workspace\nenliv\0\0" },
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/cord.nvim",
    url = "https://github.com/vyfor/cord.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gopher.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/gopher.nvim",
    url = "https://github.com/olexsmir/gopher.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  kanagawa = {
    config = {
      options = {
        dimInactive = true,
        styles = {
          comments = "italic",
          functions = "italic,bold",
          keywords = "bold",
          sidebars = "transparent",
          variables = "NONE"
        },
        terminalColors = true,
        theme = "dragon",
        transparent = true
      }
    },
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/kanagawa",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-inlayhints.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/lsp-inlayhints.nvim",
    url = "https://github.com/lvimuser/lsp-inlayhints.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["marks.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentoast/marks.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nightfox = {
    config = {
      options = {
        styles = {
          comments = "italic",
          functions = "italic,bold",
          keywords = "bold",
          sidebars = "transparent",
          variables = "NONE"
        },
        terminal_colors = true,
        transparent = true
      }
    },
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/nightfox",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["split-term.vim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/split-term.vim",
    url = "https://github.com/vimlab/split-term.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/gabrielld06/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: cord.nvim
time([[Config for cord.nvim]], true)
try_loadstring("\27LJ\2\nG\0\2\b\0\2\0\r6\2\0\0009\2\1\2\18\4\0\0\18\5\1\0)\6\1\0+\a\2\0B\2\5\2\v\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\tfind\vstring\\\0\1\n\2\2\0\0166\1\0\0-\3\0\0B\1\2\4X\4\b€-\6\1\0009\b\1\0\18\t\5\0B\6\3\2\15\0\6\0X\a\2€+\6\2\0L\6\2\0E\4\3\3R\4ö\127+\1\1\0L\1\2\0\1À\0À\14workspace\vipairsV\0\1\4\1\3\0\v-\1\0\0\18\3\0\0B\1\2\2\15\0\1\0X\2\2€'\1\0\0X\2\3€'\1\1\0009\2\2\0&\1\2\1L\1\2\0\2À\rfilename\rViewing \19Viewing a fileV\0\1\4\1\3\0\v-\1\0\0\18\3\0\0B\1\2\2\15\0\1\0X\2\2€'\1\0\0X\2\3€'\1\1\0009\2\2\0&\1\2\1L\1\2\0\2À\rfilename\rEditing \19Editing a fileS\0\1\4\1\3\0\v-\1\0\0\18\3\0\0B\1\2\2\15\0\1\0X\2\2€'\1\0\0X\2\3€'\1\1\0009\2\2\0&\1\2\1L\1\2\0\2À\14workspace\16Working on \fWorkingÍ\6\1\0\t\0\29\0!3\0\0\0005\1\1\0003\2\2\0005\3\3\0006\4\4\0'\6\5\0B\4\2\0029\4\6\0045\6\b\0005\a\a\0=\a\t\0065\a\n\0=\3\v\a=\3\f\a=\3\r\a=\3\14\a=\3\15\a=\3\16\a=\3\17\a=\3\18\a=\3\19\a=\a\20\0065\a\22\0003\b\21\0=\b\23\a3\b\24\0=\b\25\a3\b\26\0=\b\27\a=\a\28\6B\4\2\0012\0\0€K\0\1\0\ttext\14workspace\0\fediting\0\fviewing\1\0\3\14workspace\0\fviewing\0\fediting\0\0\vassets\18.interface.ts\14.model.ts\20.interceptor.ts\14.guard.ts\r.pipe.ts\18.directive.ts\16.service.ts\18.component.ts\15.module.ts\1\0\t\r.pipe.ts\0\14.guard.ts\0\20.interceptor.ts\0\14.model.ts\0\18.interface.ts\0\15.module.ts\0\18.component.ts\0\16.service.ts\0\18.directive.ts\0\tidle\1\0\3\ttext\0\vassets\0\tidle\0\1\0\t\17ignore_focus\2\ftimeout\3€ÝÛ\1\fdetails\vIdling\20unidle_on_focus\2\15smart_idle\2\16show_status\2\ftooltip\tðŸ˜´\ticonChttps://media.tenor.com/GOEO_QhhtlYAAAAM/go-to-sleep-anime.gif\fenabled\2\nsetup\tcord\frequire\1\0\3\ticonhhttps://raw.githubusercontent.com/vyfor/icons/refs/heads/master/icons/default/accent/typescript.png\tname\15typescript\ftooltip\15Typescript\0\1\3\0\0\26blacklisted_workspace\nenliv\0\0", "config", "cord.nvim")
time([[Config for cord.nvim]], false)
-- Config for: kanagawa
time([[Config for kanagawa]], true)
time([[Config for kanagawa]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: nightfox
time([[Config for nightfox]], true)
time([[Config for nightfox]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

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
