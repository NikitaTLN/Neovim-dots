local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

--	{ 'RRethy/vim-illuminate' },

    {
        'mfussenegger/nvim-dap',
        dependencies = {
            'nvim-telescope/telescope-dap.nvim',
            'theHamsta/nvim-dap-virtual-text',
            'rcarriga/nvim-dap-ui',
        }
    },

    { 'nvim-telescope/telescope-dap.nvim' },
	{ 'theHamsta/nvim-dap-virtual-text' },
	{ 'rcarriga/nvim-dap-ui' },

    {'theprimeagen/harpoon'},
    {'ThePrimeagen/vim-be-good'},

    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        },
    },

	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'neovim/nvim-lspconfig' },

	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'mason-org/mason.nvim' },
    { 'mason-org/mason-lspconfig.nvim' },
	{ 'git@github.com:github/copilot.vim.git' },

    {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
	    require('dashboard').setup{}
	  end,
	  dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},

	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
 	{ 'nyoom-engineering/oxocarbon.nvim' },
	{
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
    },

	{
	    "vhyrro/luarocks.nvim",
	    priority = 1001,
        config = true,
        lazy=false,
	},

	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
  	  log_level = "off",
          ignore_missing = true,
	  init = function()
	    vim.o.timeout = false
	  end,
	},

	{ 'echasnovski/mini.nvim', version = false },
	{ 'echasnovski/mini.move', version = false },
	{ 'echasnovski/mini.pairs', version = false },
})
