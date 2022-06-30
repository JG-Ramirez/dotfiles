-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Package manager
    use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
    use 'rhysd/git-messenger.vim' -- display messages of git commits
    use 'tpope/vim-unimpaired' -- Pairs of handy bracket mappings
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use 'tpope/vim-fugitive' --Git wrapper so awesome, it should be illegal
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    -- UI to select things (files, grep results, open buffers...)
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'nvim-telescope/telescope-node-modules.nvim' }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    -- Add indentation guides even on blank lines
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Treesitter extra modules {{
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'windwp/nvim-ts-autotag' -- Use treesitter to autoclose and autorename html tag
    use  'andymass/vim-matchup'
    -- linter
    use 'mfussenegger/nvim-lint'
    --}}
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    -- better navigation using lsp and treesitter
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'onsails/lspkind.nvim' -- tiny plugin adds vscode-like pictograms to neovim built-in lsp
    use 'hrsh7th/cmp-nvim-lsp'
    -- For luasnip users.
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- notification 
    use 'rcarriga/nvim-notify'
    use { 'sbdchd/neoformat' }
    -- Lua
    -- use "folke/which-key.nvim"
  -- improve yank and put functionalities for Neovim.
    use { "gbprod/yanky.nvim"}
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }, tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'bkad/CamelCaseMotion' -- move cammel case words
    use 'f-person/git-blame.nvim'
    -- colorschemes
    use 'marko-cerovac/material.nvim'
    use "savq/melange"
    use "sainnhe/edge"
    use "sainnhe/gruvbox-material"
    use 'olimorris/onedarkpro.nvim'
    use 'Th3Whit3Wolf/onebuddy'
    use 'Th3Whit3Wolf/one-nvim'
  end)

-- colorscheme
vim.g.material_style = "lighter"
vim.o.termguicolors = true
vim.o.background = "light"
-- vim.cmd 'colorscheme material'
-- vim.cmd 'colorscheme edge'
-- vim.o.background = "light"
-- vim.o.background = "light" -- to load onelight
require("onedarkpro").load()

--Enable Comment.nvim
require('Comment').setup({})

--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_show_trailing_blankline_indent = false

-- Gitsigns
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

-- Telescope
require('telescope').setup {
  defaults = {
    layout_strategy = 'vertical',
    dynamic_preview_title = true,
    mappings = {
      i = {
        ['<C-u>'] = false,
        ["<C-d>"] = "delete_buffer"
      },
    },
  },
}
--Add leader shortcuts
vim.api.nvim_set_keymap('n', '<leader><space>',
  [[<cmd>lua require('telescope.builtin').buffers()<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sf',
  [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sb',
  [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh',
  [[<cmd>lua require('telescope.builtin').help_tags()<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sc',
  [[<cmd>lua require('telescope.builtin').colorscheme()<CR>]],
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>st',
  [[<cmd>lua require('telescope.builtin').tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sd',
  [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sl',
  [[<cmd>lua require('telescope.builtin').resume()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sp',
  [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>so',
  [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>?',
  [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nm',
  '<cmd>Telescope node_modules list<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sy',
  '<cmd>Telescope yank_history<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sj',
  [[<cmd>lua require('telescope.builtin').jumplist()<CR>]], { noremap = true, silent = true })
-- Enable telescope node modules
require('telescope').load_extension 'node_modules'
-- Enable telescope fzf native
require('telescope').load_extension 'fzf'

-- Treesitter configuration
-- Parsers must be installed manually via :TSInstall
require('nvim-treesitter.configs').setup {
    ensure_installed = "all", -- if not tree sitter won't install any parser
    autotag = {
      enable = true,
    },
    matchup = {
      enable = true,              -- mandatory, false will disable the whole extension
    },
    highlight = {
      enable = true, -- false will disable the whole extension
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = 'gnn',
        node_incremental = 'grn',
        scope_incremental = 'grc',
        node_decremental = 'grm',
      },
    },
    indent = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          [']m'] = '@function.outer',
          [']]'] = '@class.outer',
        },
        goto_next_end = {
          [']M'] = '@function.outer',
          [']['] = '@class.outer',
        },
        goto_previous_start = {
          ['[m'] = '@function.outer',
          ['[['] = '@class.outer',
        },
        goto_previous_end = {
          ['[M'] = '@function.outer',
          ['[]'] = '@class.outer',
        },
      },
    },
  }
-- Fold based on tree sitter
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Diagnostic keymaps
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })

-- LSP settings
local lspconfig = require 'lspconfig'
local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', [[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', [[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', [[<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>]], opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', [[<cmd>lua require('telescope.builtin').lsp_references()<CR>]], opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end
 

-- nvim-cmp supports additional completion capabilities
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Enable the following language servers
local servers = { 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
-- Lua custom server
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
local sumneko_root_path = vim.fn.getenv 'HOME' .. '/.code/lua-language-server' -- custom folder ~/.code were lsp client was cloned and built
local sumneko_binary = sumneko_root_path .. '/bin/lua-language-server'

lspconfig.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- nvim-cmp setup
local lspkind = require('lspkind')
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ["<c-y>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    ),
    ["<tab>"] = cmp.config.disable,
    ["<c-space>"] = cmp.mapping {
      i = cmp.mapping.complete(),
      c = function(
        _ --[[fallback]]
      )
        if cmp.visible() then
          if not cmp.confirm { select = true } then
            return
          end
        else
          cmp.complete()
        end
      end,
    },
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'vsnip' }, -- For vsnip users.
    { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
      { name = 'buffer' },
    }),
   formatting = {
    -- Youtube: How to set up nice formatting for your sources.
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[api]",
        path = "[path]",
        luasnip = "[snip]",
        gh_issues = "[issues]",
        tn = "[TabNine]",
      },
    },
  },
}

local opts = { noremap = true, silent = true }
-- fugitive
vim.api.nvim_set_keymap('n', '<leader>gr', ':Gread<CR>', opts)
-- neogit
vim.api.nvim_set_keymap('n', '<leader>gs', ':Neogit<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gd', ':DiffviewOpen<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gD', ':DiffviewOpen main<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gl', ':Neogit log<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>gp', '::Neogit push<CR>', opts)

local neogit = require('neogit')

neogit.setup {
  disable_commit_confirmation = true,
  disable_signs = false,
  disable_hint = false,
  disable_context_highlighting = false,
  -- Neogit refreshes its internal state after specific events, which can be expensive depending on the repository size. 
  -- Disabling `auto_refresh` will make it so you have to manually refresh the status after you open it.
  auto_refresh = true,
  disable_builtin_notifications = false,
  use_magit_keybindings = false,
  commit_popup = {
      kind = "split",
  },
  -- Change the default way of opening neogit
  kind = "tab",
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { ">", "v" },
    item = { ">", "v" },
    hunk = { "", "" },
  },
  integrations = {
    diffview = true
  },
    -- Setting any section to `false` will make the section not render at all
  sections = {
    untracked = {
      folded = false
    },
    unstaged = {
      folded = false
    },
    staged = {
      folded = false
    },
    stashes = {
      folded = true
    },
    unpulled = {
      folded = true
    },
    unmerged = {
      folded = false
    },
    recent = {
      folded = true
    },
  },
  -- override/add mappings
  mappings = {
    -- modify status buffer mappings
    status = {
      -- Adds a mapping with "B" as key that does the "BranchPopup" command
      ["w"] = "StashPopup",
      -- Removes the default mapping of "s"
      ["Z"] = "",
    }
  }
}

-- Neoformat
vim.g.neoformat_try_node_exe = 1
vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat <CR>', opts)
-- format on save
vim.cmd([[
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
]])
-- Nvim-tree 
require'nvim-tree'.setup ({ 
  sync_root_with_cwd = true,
  reload_on_bufenter = true,
  respect_buf_cwd= true,
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = {},
  },
})

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', '<:NvimTreeRefresh<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFileToggle<CR>', opts)

-- nvim lint -----------------------------
-- require('lint').linters_by_ft = {
--   typescript = {'eslint'},
--   typescriptreact = {'eslint'},
--   javascript = {'eslint'},
--   javascriptreact = {'eslint'},
--
-- }

-- vim.api.nvim_exec([[au BufWritePost <buffer> lua require('lint').try_lint()]], false)
-- vim.api.nvim_set_keymap('n', '<leader>li', [[<buffer>lua require('lint').try_lint()<CR>]], { noremap = true, silent = false })
--
local lint = require('lint')
-- lint.linters.eslint.cmd = './node_modules/.bin/eslint'
lint.linters_by_ft = {
	javascript = {'eslint'},
	javascriptreact = {'eslint'},
	typescript = {'eslint'},
	typescriptreact = {'eslint'},
}

-- vim.api.nvim_command([[au BufWritePost <buffer> lua require('lint').try_lint()]])

vim.cmd([[
  au BufWritePost <buffer> lua require('lint').try_lint()
]])
-- yanky nvim
local utils = require("yanky.utils")
local mapping = require("yanky.telescope.mapping")
require("yanky").setup({
  ring = {
    history_length = 40,
    storage = "shada",
    sync_with_numbered_registers = true,
  },
  picker = {
    telescope = {
       default = mapping.put("p"),
        i = {
          ["<c-p>"] = mapping.put("p"),
          ["<c-k>"] = mapping.put("P"),
          ["<c-x>"] = mapping.delete(),
          ["<c-r>"] = mapping.set_register(utils.get_default_register()),
        },
        n = {
          p = mapping.put("p"),
          P = mapping.put("P"),
          d = mapping.delete(),
          r = mapping.set_register(utils.get_default_register())
        },
    }
  },
  system_clipboard = {
    sync_with_ring = false,
  },
  highlight = {
    on_put = true,
    on_yank = true,
    timer = 500,
  },
})
vim.keymap.set("n", "p", "<Plug>(YankyPutAfter)", {})
vim.keymap.set("n", "P", "<Plug>(YankyPutBefore)", {})
vim.keymap.set("x", "p", "<Plug>(YankyPutAfter)", {})
vim.keymap.set("x", "P", "<Plug>(YankyPutBefore)", {})
vim.keymap.set("n", "gp", "<Plug>(YankyGPutAfter)", {})
vim.keymap.set("n", "gP", "<Plug>(YankyGPutBefore)", {})
vim.keymap.set("x", "gp", "<Plug>(YankyGPutAfter)", {})
vim.keymap.set("x", "gP", "<Plug>(YankyGPutBefore)", {})
-- Yank-ring
vim.api.nvim_set_keymap("n", "<c-n>", "<Plug>(YankyCycleForward)", {})
vim.api.nvim_set_keymap("n", "<c-p>", "<Plug>(YankyCycleBackward)", {})
require("telescope").load_extension("yank_history")
-- Yank Preserve cursor position
vim.keymap.set("n", "y", "<Plug>(YankyYank)", {})
vim.keymap.set("x", "y", "<Plug>(YankyYank)", {})
-- Camel case Motion
vim.g.camelcasemotion_key = '<leader>'
-- Git blame
-- vim.g.gitblame_enabled = 1
