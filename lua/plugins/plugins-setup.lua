
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- automatically update and install this software
-- "PackerCompile" switched to "PackerSync"
-- "plugins.lua" switched to "plugins-setup.lua"
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use 'folke/tokyonight.nvim' -- theme
    -- use 'Mofiqul/dracula.nvim'
    use "joshdick/onedark.vim"
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
      'nvim-tree/nvim-tree.lua', -- nvim tree
      requires = {
            'nvim-tree/nvim-web-devicons', -- icons 
      }
  }
  use 'nvim-tree/nvim-web-devicons'
  use("christoomey/vim-tmux-navigator") -- use C-<hjkl> to navigate
  use "nvim-treesitter/nvim-treesitter" -- syntax highlight
  use "p00f/nvim-ts-rainbow" -- rainbow brackets (for treesitter)
  -- LSP
  use {
    "williamboman/mason.nvim";
    "williamboman/mason-lspconfig.nvim";
    "neovim/nvim-lspconfig";
  }
  -- auto completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("L3MON4D3/LuaSnip") -- snippet engine
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")
    use("hrsh7th/cmp-path") -- file path
    use "numToStr/Comment.nvim" -- gcc and gc comments
    use "windwp/nvim-autopairs" -- auto complete the bracket

    use "lewis6991/gitsigns.nvim" -- git notices on left

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4', -- file search
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- wakatime
    use 'wakatime/vim-wakatime'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
