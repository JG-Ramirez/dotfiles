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
local package_path_str = "/home/tuxgabo/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?.lua;/home/tuxgabo/.cache/nvim/packer_hererocks/2.1.1716656478/share/lua/5.1/?/init.lua;/home/tuxgabo/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?.lua;/home/tuxgabo/.cache/nvim/packer_hererocks/2.1.1716656478/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tuxgabo/.cache/nvim/packer_hererocks/2.1.1716656478/lib/lua/5.1/?.so"
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
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["ariake-vim-colors"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/ariake-vim-colors",
    url = "https://github.com/jim-at-jibba/ariake-vim-colors"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["copilot-cmp"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16copilot_cmp\frequire\0" },
    load_after = {
      ["copilot.lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/opt/copilot-cmp",
    url = "https://github.com/zbirenbaum/copilot-cmp"
  },
  ["copilot.lua"] = {
    after = { "copilot-cmp" },
    commands = { "Copilot" },
    config = { "\27LJ\2\nˆ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\npanel\1\0\1\fenabled\1\15suggestion\1\0\2\15suggestion\0\npanel\0\1\0\1\fenabled\1\nsetup\fcopilot\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  edge = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["flit.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/flit.nvim",
    url = "https://github.com/ggandor/flit.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["melange-nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/melange-nvim",
    url = "https://github.com/savq/melange-nvim"
  },
  ["modus-theme-vim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/modus-theme-vim",
    url = "https://github.com/ishan9299/modus-theme-vim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["neovim-ayu"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/neovim-ayu",
    url = "https://github.com/Shatur/neovim-ayu"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n\2\0\0\n\0\n\2(6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2€+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\17€6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0)\6\0\0\23\a\1\0\18\b\1\0004\t\0\0B\2\a\2:\2\1\2\18\4\2\0009\2\b\2'\5\t\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\n^%s*$\nmatch\22nvim_buf_get_text\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¤\1\0\1\5\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\r€-\1\1\0B\1\1\2\15\0\1\0X\2\t€-\1\0\0009\1\1\0015\3\4\0-\4\0\0009\4\2\0049\4\3\4=\4\5\3B\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\3À\rbehavior\1\0\1\rbehavior\0\vSelect\19SelectBehavior\21select_next_item\fvisible˜\14\1\0\r\0R\0¸\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\5\0'\2\6\0B\0\2\0026\1\5\0'\3\a\0B\1\2\0029\2\b\0\18\4\2\0009\2\t\2'\5\n\0009\6\v\1B\6\1\0A\2\2\0016\2\5\0'\4\f\0B\2\2\0023\3\r\0009\4\14\0005\6\18\0005\a\16\0003\b\15\0=\b\17\a=\a\19\0065\a\23\0009\b\20\0009\b\21\b9\b\22\bB\b\1\2=\b\24\a9\b\20\0009\b\21\b9\b\22\bB\b\1\2=\b\25\a=\a\21\0069\a\26\0009\a\27\a9\a\28\a5\t\30\0009\n\26\0009\n\29\n)\füÿB\n\2\2=\n\31\t9\n\26\0009\n\29\n)\f\4\0B\n\2\2=\n \t9\n\26\0009\n!\nB\n\1\2=\n\"\t9\n\26\0009\n#\nB\n\1\2=\n$\t9\n\26\0009\n%\n5\f&\0B\n\2\2=\n'\t6\n\0\0009\n(\n3\f)\0B\n\2\2=\n*\tB\a\2\2=\a\26\0069\a\20\0009\a+\a4\t\4\0005\n,\0>\n\1\t5\n-\0>\n\2\t5\n.\0>\n\3\t4\n\3\0005\v/\0>\v\1\nB\a\3\2=\a+\0065\a4\0009\b0\0025\n1\0005\v2\0=\v3\nB\b\2\2=\b5\a=\a6\0065\a8\0005\b7\0=\b9\a5\b:\0004\t\v\0006\n\5\0'\f;\0B\n\2\0029\n<\n>\n\1\t9\n\20\0009\n=\n9\n>\n>\n\2\t9\n\20\0009\n=\n9\n?\n>\n\3\t9\n\20\0009\n=\n9\n@\n>\n\4\t9\n\20\0009\n=\n9\nA\n>\n\5\t9\n\20\0009\n=\n9\nB\n>\n\6\t9\n\20\0009\n=\n9\nC\n>\n\a\t9\n\20\0009\n=\n9\nD\n>\n\b\t9\n\20\0009\n=\n9\nE\n>\n\t\t9\n\20\0009\n=\n9\nF\n>\n\n\t=\tG\b=\bH\a=\aI\6B\4\2\0019\4\14\0009\4J\0045\6K\0005\aL\0009\b\26\0009\b\27\b9\bJ\bB\b\1\2=\b\26\a4\b\3\0005\tM\0>\t\1\b=\b+\aB\4\3\0019\4\14\0009\4J\4'\6N\0005\aO\0009\b\26\0009\b\27\b9\bJ\bB\b\1\2=\b\26\a9\b\20\0009\b+\b4\n\3\0005\vP\0>\v\1\n4\v\3\0005\fQ\0>\f\1\vB\b\3\2=\b+\aB\4\3\0012\0\0€K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\2\fsources\0\fmapping\0\6:\1\0\1\tname\vbuffer\1\0\2\fsources\0\fmapping\0\1\3\0\0\6/\6?\fcmdline\17experimental\fsorting\16comparators\norder\vlength\14sort_text\tkind\rlocality\18recently_used\nscore\nexact\voffset\fcompare\15prioritize\28copilot_cmp.comparators\1\0\2\16comparators\0\20priority_weight\3\2\15ghost_text\1\0\2\15ghost_text\0\fsorting\0\1\0\1\rhl_group\17CmpGhostText\15formatting\vformat\1\0\1\vformat\0\15symbol_map\1\0\1\fCopilot\bï„“\1\0\4\rmaxwidth\0032\15symbol_map\0\18ellipsis_char\b...\tmode\vsymbol\15cmp_format\1\0\1\tname\vbuffer\1\0\2\16group_index\3\2\tname\fluasnip\1\0\2\16group_index\3\2\tname\rnvim_lsp\1\0\2\16group_index\3\2\tname\fcopilot\fsources\n<Tab>\0\18schedule_wrap\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\6\n<C-f>\0\n<Tab>\0\n<C-b>\0\t<CR>\0\n<C-e>\0\14<C-Space>\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\2\15completion\0\18documentation\0\rbordered\vwindow\vconfig\fsnippet\1\0\6\fsnippet\0\fsources\0\17experimental\0\fmapping\0\15formatting\0\vwindow\0\vexpand\1\0\1\vexpand\0\0\nsetup\0\flspkind\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\bcmp\frequire\1\0\2\fdefault\2\tlink\fComment\17CmpGhostText\16nvim_set_hl\bapi\bvim\0" },
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n@\0\0\3\0\5\1\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2D\0\2\0\nlines\6o\bvim\nfloor\tmath\1€€ ÿ\3B\0\0\3\0\5\1\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2D\0\2\0\fcolumns\6o\bvim\nfloor\tmath\1€€ ÿ\3Ž\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0003\4\4\0=\4\5\0033\4\6\0=\4\a\3B\1\2\1K\0\1\0\14max_width\0\15max_height\0\1\0\4\15max_height\0\rtop_down\2\ftimeout\3¸\23\14max_width\0\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["one-nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/one-nvim",
    url = "https://github.com/Th3Whit3Wolf/one-nvim"
  },
  onebuddy = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/onebuddy",
    url = "https://github.com/Th3Whit3Wolf/onebuddy"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["solarized.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/solarized.nvim",
    url = "https://github.com/shaunsingh/solarized.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["typescript.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-matchup"] = {
    after_files = { "/home/tuxgabo/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = true,
    needs_bufread = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/opt/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["yanky.nvim"] = {
    loaded = true,
    path = "/home/tuxgabo/.local/share/nvim/site/pack/packer/start/yanky.nvim",
    url = "https://github.com/gbprod/yanky.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^copilot"] = "copilot.lua"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vim-matchup
time([[Setup for vim-matchup]], true)
try_loadstring("\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0", "setup", "vim-matchup")
time([[Setup for vim-matchup]], false)
time([[packadd for vim-matchup]], true)
vim.cmd [[packadd vim-matchup]]
time([[packadd for vim-matchup]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n\2\0\0\n\0\n\2(6\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0B\0\3\2\a\0\4\0X\0\2€+\0\1\0L\0\2\0006\0\5\0006\2\0\0009\2\1\0029\2\6\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\17€6\2\0\0009\2\1\0029\2\a\2)\4\0\0\23\5\1\0)\6\0\0\23\a\1\0\18\b\1\0004\t\0\0B\2\a\2:\2\1\2\18\4\2\0009\2\b\2'\5\t\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\n^%s*$\nmatch\22nvim_buf_get_text\24nvim_win_get_cursor\vunpack\vprompt\fbuftype\24nvim_buf_get_option\bapi\bvim\0\2C\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire¤\1\0\1\5\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\r€-\1\1\0B\1\1\2\15\0\1\0X\2\t€-\1\0\0009\1\1\0015\3\4\0-\4\0\0009\4\2\0049\4\3\4=\4\5\3B\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\3À\rbehavior\1\0\1\rbehavior\0\vSelect\19SelectBehavior\21select_next_item\fvisible˜\14\1\0\r\0R\0¸\0016\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0005\4\4\0B\0\4\0016\0\5\0'\2\6\0B\0\2\0026\1\5\0'\3\a\0B\1\2\0029\2\b\0\18\4\2\0009\2\t\2'\5\n\0009\6\v\1B\6\1\0A\2\2\0016\2\5\0'\4\f\0B\2\2\0023\3\r\0009\4\14\0005\6\18\0005\a\16\0003\b\15\0=\b\17\a=\a\19\0065\a\23\0009\b\20\0009\b\21\b9\b\22\bB\b\1\2=\b\24\a9\b\20\0009\b\21\b9\b\22\bB\b\1\2=\b\25\a=\a\21\0069\a\26\0009\a\27\a9\a\28\a5\t\30\0009\n\26\0009\n\29\n)\füÿB\n\2\2=\n\31\t9\n\26\0009\n\29\n)\f\4\0B\n\2\2=\n \t9\n\26\0009\n!\nB\n\1\2=\n\"\t9\n\26\0009\n#\nB\n\1\2=\n$\t9\n\26\0009\n%\n5\f&\0B\n\2\2=\n'\t6\n\0\0009\n(\n3\f)\0B\n\2\2=\n*\tB\a\2\2=\a\26\0069\a\20\0009\a+\a4\t\4\0005\n,\0>\n\1\t5\n-\0>\n\2\t5\n.\0>\n\3\t4\n\3\0005\v/\0>\v\1\nB\a\3\2=\a+\0065\a4\0009\b0\0025\n1\0005\v2\0=\v3\nB\b\2\2=\b5\a=\a6\0065\a8\0005\b7\0=\b9\a5\b:\0004\t\v\0006\n\5\0'\f;\0B\n\2\0029\n<\n>\n\1\t9\n\20\0009\n=\n9\n>\n>\n\2\t9\n\20\0009\n=\n9\n?\n>\n\3\t9\n\20\0009\n=\n9\n@\n>\n\4\t9\n\20\0009\n=\n9\nA\n>\n\5\t9\n\20\0009\n=\n9\nB\n>\n\6\t9\n\20\0009\n=\n9\nC\n>\n\a\t9\n\20\0009\n=\n9\nD\n>\n\b\t9\n\20\0009\n=\n9\nE\n>\n\t\t9\n\20\0009\n=\n9\nF\n>\n\n\t=\tG\b=\bH\a=\aI\6B\4\2\0019\4\14\0009\4J\0045\6K\0005\aL\0009\b\26\0009\b\27\b9\bJ\bB\b\1\2=\b\26\a4\b\3\0005\tM\0>\t\1\b=\b+\aB\4\3\0019\4\14\0009\4J\4'\6N\0005\aO\0009\b\26\0009\b\27\b9\bJ\bB\b\1\2=\b\26\a9\b\20\0009\b+\b4\n\3\0005\vP\0>\v\1\n4\v\3\0005\fQ\0>\f\1\vB\b\3\2=\b+\aB\4\3\0012\0\0€K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\2\fsources\0\fmapping\0\6:\1\0\1\tname\vbuffer\1\0\2\fsources\0\fmapping\0\1\3\0\0\6/\6?\fcmdline\17experimental\fsorting\16comparators\norder\vlength\14sort_text\tkind\rlocality\18recently_used\nscore\nexact\voffset\fcompare\15prioritize\28copilot_cmp.comparators\1\0\2\16comparators\0\20priority_weight\3\2\15ghost_text\1\0\2\15ghost_text\0\fsorting\0\1\0\1\rhl_group\17CmpGhostText\15formatting\vformat\1\0\1\vformat\0\15symbol_map\1\0\1\fCopilot\bï„“\1\0\4\rmaxwidth\0032\15symbol_map\0\18ellipsis_char\b...\tmode\vsymbol\15cmp_format\1\0\1\tname\vbuffer\1\0\2\16group_index\3\2\tname\fluasnip\1\0\2\16group_index\3\2\tname\rnvim_lsp\1\0\2\16group_index\3\2\tname\fcopilot\fsources\n<Tab>\0\18schedule_wrap\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\6\n<C-f>\0\n<Tab>\0\n<C-b>\0\t<CR>\0\n<C-e>\0\14<C-Space>\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\2\15completion\0\18documentation\0\rbordered\vwindow\vconfig\fsnippet\1\0\6\fsnippet\0\fsources\0\17experimental\0\fmapping\0\15formatting\0\vwindow\0\vexpand\1\0\1\vexpand\0\0\nsetup\0\flspkind\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\bcmp\frequire\1\0\2\fdefault\2\tlink\fComment\17CmpGhostText\16nvim_set_hl\bapi\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\5\1\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2D\0\2\0\nlines\6o\bvim\nfloor\tmath\1€€ ÿ\3B\0\0\3\0\5\1\a6\0\0\0009\0\1\0006\2\2\0009\2\3\0029\2\4\2\24\2\0\2D\0\2\0\fcolumns\6o\bvim\nfloor\tmath\1€€ ÿ\3Ž\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0003\4\4\0=\4\5\0033\4\6\0=\4\a\3B\1\2\1K\0\1\0\14max_width\0\15max_height\0\1\0\4\15max_height\0\rtop_down\2\ftimeout\3¸\23\14max_width\0\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Copilot', function(cmdargs)
          require('packer.load')({'copilot.lua'}, { cmd = 'Copilot', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'copilot.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Copilot ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au LspAttach * ++once lua require("packer.load")({'copilot-cmp'}, { event = "LspAttach *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'copilot.lua', 'copilot-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

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
