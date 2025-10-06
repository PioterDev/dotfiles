require("config.lazy")
require("config.gitsigns")

require("config.options")
require("config.keybinds")

vim.cmd("source " .. vim.fn.stdpath('config') .. "/start.vim")
vim.cmd("source " .. vim.fn.stdpath('config') .. "/colors/default.vim")

require'nvim-treesitter.configs'.setup {
  -- ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = false,

  ignore_install = {  },

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
	-- disable = { "c", "cpp" },
  },
  filetypes = {
	-- c = { "c", "h" },
	-- cpp = { "cpp", "hpp" },
  }
}
require("toggleterm").setup{}
