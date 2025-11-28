require("config.lazy")
require("config.gitsigns")

require("config.tree-sitter")

require("config.options")
require("config.keybinds")

vim.cmd("source " .. vim.fn.stdpath("config") .. "/start.vim")
vim.cmd("source " .. vim.fn.stdpath("config") .. "/colors/default.vim")

require("nvim-treesitter.configs").setup {
	sync_install = false,
	auto_install = false,
	ignore_install = {  },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	filetypes = {}
}
require("toggleterm").setup{}
