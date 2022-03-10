vim.cmd [[packadd packer.nvim]]
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP config
  use {"neovim/nvim-lspconfig", config = [[ require('plugins/lspconfig') ]]}
  use {'simrat39/rust-tools.nvim', config = [[ require('plugins/rust-tools') ]]}

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = [[ require('plugins/nvim-treesitter') ]]}

  -- Color
  use {"christianchiarulli/nvcode-color-schemes.vim"}

  -- Auto completion
  use {'hrsh7th/nvim-cmp', config = [[ require('plugins/nvim-cmp') ]]}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/cmp-vsnip'}

  -- Snippets
  use {'hrsh7th/vim-vsnip'}

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
        require("telescope").setup {
          defaults = {
              initial_mode = "normal",
              mappings = {
                  n = {
                      ["<C-c>"] = "close",
                  },
              },
          },
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
                -- even more opts
              }
            }
          }
        }
        -- To get fzf loaded and working with telescope, you need to call
        -- load_extension, somewhere after setup function:
        require("telescope").load_extension("ui-select")
    end
  }
  use {'nvim-telescope/telescope-ui-select.nvim' }
  use {'stevearc/dressing.nvim', config = function ()
      require('dressing').setup({
          select = {
              enabled = false,
          }
      })
  end}

  -- Whichkey
  use {
  "folke/which-key.nvim",
  config = function()
      require("which-key").setup {
          window = {
              position = "bottom",
          },
          triggers = {"<leader>"},
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {{ 'kyazdani42/nvim-web-devicons'}, {'arkav/lualine-lsp-progress'}},
    config = function()
        require('lualine').setup {
            sections = {
              lualine_a = {
                {
                  'diagnostics',
                  -- Table of diagnostic sources, available sources are:
                  --   'nvim_lsp', 'nvim_diagnostic', 'coc', 'ale', 'vim_lsp'.
                  -- or a function that returns a table as such:
                  --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
                  sources = { 'nvim_lsp' },
                  -- Displays diagnostics for the defined severity types
                  sections = { 'error', 'warn', 'info', 'hint' },
                  diagnostics_color = {
                    -- Same values as the general color option can be used here.
                    error = 'DiagnosticError', -- Changes diagnostics' error color.
                    warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
                    info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
                    hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
                  },
                  symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
                  colored = true,           -- Displays diagnostics status in color if set to true.
                  update_in_insert = false, -- Update diagnostics in insert mode.
                  always_visible = false,   -- Show diagnostics even if there are none.
                }
              },
              lualine_c = {
                  {
        			'lsp_progress',
                	-- With spinner
                	display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' }},
                	separators = {
                		component = ' ',
                		progress = ' | ',
                		message = { pre = '(', post = ')'},
                		percentage = { pre = '', post = '%% ' },
                		title = { pre = '', post = ': ' },
                		lsp_client_name = { pre = '[', post = ']' },
                		spinner = { pre = '', post = '' },
                		message = { commenced = 'In Progress', completed = 'Completed' },
                	},
                	display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' } },
                	timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
                	spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
                }
              }
            }
        }
    end
  }

  -- Tabs
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  -- Sneak
  use 'justinmk/vim-sneak'

  -- Git
  use 'tpope/vim-fugitive'

  if packer_bootstrap then
    require('packer').sync()
  end
end)


