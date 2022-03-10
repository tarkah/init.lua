-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/tarkah/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/tarkah/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/tarkah/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/tarkah/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tarkah/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\1\2X\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\vselect\1\0\0\1\0\1\fenabled\1\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2÷\a\0\0\a\0'\00034\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1&\0003\2\f\0002\3\3\0003\4\3\0003\5\4\0:\5\5\0043\5\6\0:\5\a\0043\5\b\0:\5\t\0043\5\n\0:\5\v\4;\4\1\3:\3\r\0022\3\3\0003\4\14\0003\5\15\0003\6\16\0;\6\3\5:\5\17\0043\5\18\0003\6\19\0:\6\20\0053\6\21\0:\6\22\0053\6\23\0:\6\24\0053\6\25\0:\6\26\0053\6\27\0:\6\28\0053\6\29\0:\6\20\5:\5\30\0043\5\31\0003\6 \0;\6\3\5:\5\17\0043\5!\0:\5\"\0043\5#\0:\5$\4;\4\1\3:\3%\2:\2\a\1>\0\2\1G\0\1\0\1\0\0\14lualine_c\20spinner_symbols\1\t\0\0\nðŸŒ‘ \nðŸŒ’ \nðŸŒ“ \nðŸŒ” \nðŸŒ• \nðŸŒ– \nðŸŒ— \nðŸŒ˜ \ntimer\1\0\3\fspinner\3è\a\29lsp_client_name_enddelay\3è\a\22progress_enddelay\3ô\3\1\4\0\0\ntitle\15percentage\fmessage\1\3\0\0\20lsp_client_name\fspinner\15separators\1\0\2\14commenced\16In Progress\14completed\14Completed\fspinner\1\0\2\tpost\5\bpre\5\20lsp_client_name\1\0\2\tpost\6]\bpre\6[\ntitle\1\0\2\tpost\a: \bpre\5\15percentage\1\0\2\tpost\b%% \bpre\5\fmessage\1\0\2\tpost\6)\bpre\6(\1\0\2\rprogress\b | \14component\6 \23display_components\1\4\0\0\ntitle\15percentage\fmessage\1\3\0\0\20lsp_client_name\fspinner\1\2\0\0\17lsp_progress\14lualine_a\1\0\0\fsymbols\1\0\4\thint\6H\tinfo\6I\twarn\6W\nerror\6E\22diagnostics_color\1\0\4\thint\19DiagnosticHint\tinfo\19DiagnosticInfo\twarn\19DiagnosticWarn\nerror\20DiagnosticError\rsections\1\5\0\0\nerror\twarn\tinfo\thint\fsources\1\2\0\0\rnvim_lsp\1\2\3\0\16diagnostics\19always_visible\1\21update_in_insert\1\fcolored\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim",
    url = "https://github.com/christianchiarulli/nvcode-color-schemes.vim"
  },
  ["nvim-cmp"] = {
    config = { " require('plugins/nvim-cmp') " },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { " require('plugins/lspconfig') " },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { " require('plugins/nvim-treesitter') " },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { " require('plugins/rust-tools') " },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2Í\1\0\0\6\0\n\1\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\a\0003\2\5\0002\3\3\0004\4\0\0%\5\3\0>\4\2\0027\4\4\0042\5\0\0>\4\2\0<\4\0\0:\3\6\2:\2\b\1>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\t\0%\1\6\0>\0\2\1G\0\1\0\19load_extension\15extensions\1\0\0\14ui-select\1\0\0\17get_dropdown\21telescope.themes\nsetup\14telescope\frequire\3€€À™\4\0" },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2~\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\rtriggers\1\2\0\0\r<leader>\vwindow\1\0\0\1\0\1\rposition\vbottom\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/tarkah/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
 require('plugins/nvim-treesitter') 
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
 require('plugins/nvim-cmp') 
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2~\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\rtriggers\1\2\0\0\r<leader>\vwindow\1\0\0\1\0\1\rposition\vbottom\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2÷\a\0\0\a\0'\00034\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1&\0003\2\f\0002\3\3\0003\4\3\0003\5\4\0:\5\5\0043\5\6\0:\5\a\0043\5\b\0:\5\t\0043\5\n\0:\5\v\4;\4\1\3:\3\r\0022\3\3\0003\4\14\0003\5\15\0003\6\16\0;\6\3\5:\5\17\0043\5\18\0003\6\19\0:\6\20\0053\6\21\0:\6\22\0053\6\23\0:\6\24\0053\6\25\0:\6\26\0053\6\27\0:\6\28\0053\6\29\0:\6\20\5:\5\30\0043\5\31\0003\6 \0;\6\3\5:\5\17\0043\5!\0:\5\"\0043\5#\0:\5$\4;\4\1\3:\3%\2:\2\a\1>\0\2\1G\0\1\0\1\0\0\14lualine_c\20spinner_symbols\1\t\0\0\nðŸŒ‘ \nðŸŒ’ \nðŸŒ“ \nðŸŒ” \nðŸŒ• \nðŸŒ– \nðŸŒ— \nðŸŒ˜ \ntimer\1\0\3\fspinner\3è\a\29lsp_client_name_enddelay\3è\a\22progress_enddelay\3ô\3\1\4\0\0\ntitle\15percentage\fmessage\1\3\0\0\20lsp_client_name\fspinner\15separators\1\0\2\14commenced\16In Progress\14completed\14Completed\fspinner\1\0\2\tpost\5\bpre\5\20lsp_client_name\1\0\2\tpost\6]\bpre\6[\ntitle\1\0\2\tpost\a: \bpre\5\15percentage\1\0\2\tpost\b%% \bpre\5\fmessage\1\0\2\tpost\6)\bpre\6(\1\0\2\rprogress\b | \14component\6 \23display_components\1\4\0\0\ntitle\15percentage\fmessage\1\3\0\0\20lsp_client_name\fspinner\1\2\0\0\17lsp_progress\14lualine_a\1\0\0\fsymbols\1\0\4\thint\6H\tinfo\6I\twarn\6W\nerror\6E\22diagnostics_color\1\0\4\thint\19DiagnosticHint\tinfo\19DiagnosticInfo\twarn\19DiagnosticWarn\nerror\20DiagnosticError\rsections\1\5\0\0\nerror\twarn\tinfo\thint\fsources\1\2\0\0\rnvim_lsp\1\2\3\0\16diagnostics\19always_visible\1\21update_in_insert\1\fcolored\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
 require('plugins/rust-tools') 
time([[Config for rust-tools.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\1\2X\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\vselect\1\0\0\1\0\1\fenabled\1\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2Í\1\0\0\6\0\n\1\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\a\0003\2\5\0002\3\3\0004\4\0\0%\5\3\0>\4\2\0027\4\4\0042\5\0\0>\4\2\0<\4\0\0:\3\6\2:\2\b\1>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\t\0%\1\6\0>\0\2\1G\0\1\0\19load_extension\15extensions\1\0\0\14ui-select\1\0\0\17get_dropdown\21telescope.themes\nsetup\14telescope\frequire\3€€À™\4\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
 require('plugins/lspconfig') 
time([[Config for nvim-lspconfig]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
