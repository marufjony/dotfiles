-- Set up the path for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Ensure termguicolors is enabled for proper color rendering
vim.o.termguicolors = true

-- Configure lazy.nvim plugins
require('lazy').setup({

  -- Catppuccin Theme: A warm and soothing theme for Neovim
  { "catppuccin/nvim", name = "catppuccin" },

  -- Alpha: A dashboard for Neovim with customizable options
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('plugins.alpha-nvim')
    end
  },

  -- Nvim-tree: A file explorer tree for Neovim
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  -- Bufferline: Visualize buffers as tabs in Neovim
  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },

  -- Nvim-autopairs: Automatically insert pairs of characters (e.g., parentheses)
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },

  -- Obsidian: Note-taking plugin for Neovim, optimized for markdown
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- Use the latest release instead of the latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Markdown-preview: Preview markdown files in the browser
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- Distraction-free Coding
  { 'folke/zen-mode.nvim' }, -- Only writing pad
  { "folke/twilight.nvim", opts = {} }, -- Dim inactive portions of the code you're editing

  -- Nvim-comment: Plugin for easily commenting and uncommenting code
  {
    'terrortylor/nvim-comment',
    config = function()
      require("nvim_comment").setup({ create_mappings = false })
    end
  },

  -- Noice: Enhanced command-line UI for Neovim
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        routes = {
          {
            filter = {
              event = 'msg_show',
              any = {
                { find = '%d+L, %d+B' },
                { find = '; after #%d+' },
                { find = '; before #%d+' },
                { find = '%d fewer lines' },
                { find = '%d more lines' },
              },
            },
            opts = { skip = true },
          }
        },
        presets = {
          bottom_search = true, -- Use a classic bottom command line for search
          command_palette = true, -- Position the command line and popup menu together
          long_message_to_split = true, -- Long messages will be sent to a split
          lsp_doc_border = false, -- Add a border to hover docs and signature help
        },
      })
    end,
    dependencies = {
      -- Ensure `nui.nvim` is loaded
      "MunifTanjim/nui.nvim",
      -- Optional: `nvim-notify` for notifications, use `mini` if not available
      "rcarriga/nvim-notify",
    }
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        stages = "fade_in_slide_out",
        background_colour = "#000000",
        timeout = 100,
      })
    end
  },

  -- LSP Configuration & Plugins
  { 'neovim/nvim-lspconfig' }, -- Quickstart configurations for the Nvim LSP client
  { 'williamboman/mason.nvim' }, -- Portable package manager for Neovim
  { 'williamboman/mason-lspconfig.nvim' }, -- Bridge between mason.nvim and lspconfig
  { 'j-hui/fidget.nvim' }, -- UI for LSP progress
  { 'onsails/lspkind.nvim' }, -- VSCode-like pictograms for Neovim LSP

  -- Autocompletion
  { 'hrsh7th/nvim-cmp' }, -- Autocompletion plugin
  { 'hrsh7th/cmp-nvim-lsp' }, -- LSP source for nvim-cmp
  { 'L3MON4D3/LuaSnip' }, -- Snippet engine
  { 'saadparwaiz1/cmp_luasnip' }, -- Snippet completion source for nvim-cmp

  -- Treesitter: Syntax highlighting and code navigation
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    }
  },
  { "nvim-treesitter/playground" },

  -- Lualine: A fast and easy-to-configure statusline for Neovim
  { 'nvim-lualine/lualine.nvim' },

  -- Telescope: Fuzzy finder for Neovim
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-symbols.nvim' },
})
