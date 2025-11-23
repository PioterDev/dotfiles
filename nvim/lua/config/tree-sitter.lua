local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.c = {
	install_info = {
		url = "https://github.com/PioterDev/tree-sitter-c",
		files = { "src/parser.c" },
	},
}

-- TODO: make this work
-- parser_config.cpp = {
-- 	install_info = {
-- 		url = "~/Software/3/Treesitter/tree-sitter-cpp",
-- 		files = { "src/parser.c", "src/scanner.c" },
-- 		-- generate_requires_npm = true,
-- 	},
-- }
