local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = 'rounded' }
    end,
  },
}

return packer.startup(function(use)
    use 'wbthomason/packer.nvim' -- let packer manage itself
    use 'kyazdani42/nvim-web-devicons'

    -- gruvbox theme
    use {
        'ellisonleao/gruvbox.nvim',
        config = [[ require('plugins/gruvbox') ]]
    }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- fzf-lua fuzzy finder
    use {
        'ibhagwan/fzf-lua',
        config = [[ require('plugins/fzf') ]]
    }
   
    -- lualine status bar
    use {
        'nvim-lualine/lualine.nvim',
        config = [[ require('plugins/lualine') ]]
    }

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        config = [[ require('plugins/nvim-tree') ]],
        tag = 'nightly'
    }
    
    -- toggleterm
    use {
        "akinsho/toggleterm.nvim",
        tag = 'v2.*',
        config = [[ require ('plugins/toggleterm') ]]
    }

    -- git signs
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- discord rich presence
    use {
        'andweeb/presence.nvim',
        config = [[ require('plugins/presence') ]]
    }

    -- bufferline/tabs
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        config = [[ require('plugins/bufferline') ]]
    }

    -- lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        },
        config = [[ require('plugins/lsp')]]
    }


    -- autopairs
    use {
	"windwp/nvim-autopairs",
	config = [[ require('plugins/autopairs') ]]
    }

    if packer_bootstrap then
        packer.sync()
    end
end)
