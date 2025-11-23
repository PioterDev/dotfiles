return {
	{
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
		init = function()
			vim.g.startuptime_tries = 10
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{ "lewis6991/gitsigns.nvim", },
	{ 'akinsho/toggleterm.nvim', version = "*", config = true },
	{ "danymat/neogen", version = "*", config = true },
}
