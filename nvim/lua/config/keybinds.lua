local opts_s_nr = {
    noremap = true,
    silent = true
}

local Gits = require('gitsigns')

vim.cmd("ino ' ''<Left>")
vim.cmd("ino \" \"\"<Left>")



vim.api.nvim_set_keymap('i', "(", "()<Left>", {})
-- These 2 hang Neovim for some reason 
-- vim.api.nvim_set_keymap('i', "'", "''<Left>", {})
-- vim.api.nvim_set_keymap('i', "\"", "\"\"<Left>", {})
vim.api.nvim_set_keymap('i', "[", "[]<Left>", {})
vim.api.nvim_set_keymap('i', "{", "{}<Left>", {})
-- Disabling this one since 
-- vim.api.nvim_set_keymap('i', "<", "<><Left>", {})
-- vim.api.nvim_set_keymap('i', "<<", "<<<Esc>i", {})
vim.api.nvim_set_keymap('i', "{<CR>", "{<CR>}<Up><End><CR>", {})

-- Compatibility bindings from other editors
-- Insert mode
vim.api.nvim_set_keymap('i', "<C-v>", "<Esc>Pi", {}) -- Paste
vim.api.nvim_set_keymap('i', "<C-z>", "<Esc>ui", {}) -- Undo
vim.api.nvim_set_keymap('i', "<C-y>", "<Esc><C-r>i", {}) -- Redo
vim.api.nvim_set_keymap('i', "<C-x>", "<Esc>ddi", {}) -- Cut (entire line)

vim.api.nvim_set_keymap('i', "<A-Up>", "<Esc>:m.-2<CR>i", {}) -- Move line up
vim.api.nvim_set_keymap('i', "<A-Down>", "<Esc>:m.+1<CR>i", {}) -- Move line down

vim.api.nvim_set_keymap('i', "<C-s>", "<Esc>:w<CR>i", {}) -- Save file

-- Visual mode
vim.api.nvim_set_keymap('v', "<C-z>", "<Esc>uv", {}) -- Undo
vim.api.nvim_set_keymap('v', "<C-x>", "dv", {})
vim.api.nvim_set_keymap('v', "<A-Up>", ":m.-2<CR>gv", {})
vim.api.nvim_set_keymap('v', "<A-Down>", ":m'>+<CR>gv", {})
vim.api.nvim_set_keymap('v', ">", ":<Home>silent <End>><CR>gv", { silent = true })
vim.api.nvim_set_keymap('v', "<", ":<Home>silent <End><<CR>gv", { silent = true })
vim.api.nvim_set_keymap('v', "<A-a>", "<Esc>`>a */<Esc>gv<Esc>`<i/* gv", opts_s_nr)
vim.api.nvim_set_keymap('v', "(", "<Esc>mt`>a)<Esc>gv<Esc>`<i(<Esc>`tl", opts_s_nr)
vim.api.nvim_set_keymap('v', "{", "<Esc>mt`>a}<Esc>gv<Esc>`<i{<Esc>`tl", opts_s_nr)
vim.api.nvim_set_keymap('v', "[", "<Esc>mt`>a]<Esc>gv<Esc>`<i[<Esc>`tl", opts_s_nr)
vim.api.nvim_set_keymap('v', "'", "<Esc>mt`>a'<Esc>gv<Esc>`<i'<Esc>`tl", opts_s_nr)
-- vim.api.nvim_set_keymap('v', "\"", "<Esc>mt`>a\"<Esc>gv<Esc>`<i\"<Esc>`tl", opts_s_nr)


-- Duplicate line
vim.api.nvim_set_keymap('i', "<C-Down>", "<Esc>:t.<CR>gi<Down>", {})

-- GitSigns convenience keybinds
vim.api.nvim_set_keymap('n', "<F1>", ":Gits stage_hunk<CR>", {})
vim.api.nvim_set_keymap('v', "<F1>", ":Gits stage_hunk<CR>", {})

vim.keymap.set('n', '<F5>', function()
	Gits.nav_hunk('next', {}, function()
		vim.cmd('normal! zz')
	end)
end, opts_s_nr)
vim.keymap.set('n', '<F17>', function() -- <S-Fx> -> Fx+12, in this case 17
	Gits.nav_hunk('prev', {}, function()
		vim.cmd('normal! zz')
	end)
end, opts_s_nr)

vim.keymap.set('n', '<F4>', function()
	Gits.nav_hunk('next', { target = 'staged' }, function()
		vim.cmd('normal! zz')
	end)
end, opts_s_nr)
vim.keymap.set('n', '<F16>', function()
	Gits.nav_hunk('prev', { target = 'staged' }, function()
		vim.cmd('normal! zz')
	end)
end, opts_s_nr)

vim.keymap.set('n', '<F18>', function()
	Gits.show(nil, function()
		Gits.diffthis('HEAD', nil, function()
		-- do nothing
		end)
	end)
end, {})

vim.api.nvim_set_keymap('n', "<F6>", ":vert Gits diffthis HEAD<CR>", {})
-- vim.api.nvim_set_keymap('n', "<F18>", ":Gits show<CR>:Gits diffthis HEAD<CR>", {})
vim.api.nvim_set_keymap('n', "<F7>", ":rightb ter<CR><C-w>10-igit commit<CR>", {})


vim.api.nvim_set_keymap('n', "<Esc>", "<Esc>:noh<CR>", { silent = true })
vim.api.nvim_set_keymap('t', "<Esc><Esc>", "<C-\\><C-n>", { noremap = true })


