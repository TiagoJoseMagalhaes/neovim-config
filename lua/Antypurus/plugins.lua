-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.keymap.set("n", "<leader>ps", ":PackerSync<CR>")

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Color Schemes
    use 'EdenEast/nightfox.nvim'
    use 'xiyaowong/nvim-transparent'

    -- project tree view
    use 'preservim/nerdtree'

    -- fuzzy finder
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- treesitter(doest a lot of nice things like highlighting and more)
    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'nvim-treesitter/playground'

    -- file anchoring system
    use 'theprimeagen/harpoon'

    -- undo change management
    use 'mbbill/undotree'

    -- Git support
    use 'tpope/vim-fugitive'

    -- LSP Zero
    use {
  	'VonHeikemen/lsp-zero.nvim',
  	branch = 'v1.x',
  	requires = {
    	-- LSP Support
    	{'neovim/nvim-lspconfig'},             -- Required
    	{'williamboman/mason.nvim'},           -- Optional
    	{'williamboman/mason-lspconfig.nvim'}, -- Optional

    	-- Autocompletion
    	{'hrsh7th/nvim-cmp'},         -- Required
    	{'hrsh7th/cmp-nvim-lsp'},     -- Required
    	{'hrsh7th/cmp-buffer'},       -- Optional
    	{'hrsh7th/cmp-path'},         -- Optional
    	{'saadparwaiz1/cmp_luasnip'}, -- Optional
    	{'hrsh7th/cmp-nvim-lua'},     -- Optional

    	-- Snippets
    	{'L3MON4D3/LuaSnip'},             -- Required
    	{'rafamadriz/friendly-snippets'}, -- Optional
    }
}
end)
