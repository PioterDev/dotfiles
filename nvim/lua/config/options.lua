local utils = require("utils")
local getOS = require("getOS")

vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.cindent = true
vim.o.cursorline = true
vim.o.linebreak = true
vim.o.exrc = true
vim.o.list = true

vim.cmd("set cc=80")
vim.cmd("let g:c_syntax_for_h = 1")
vim.cmd("syntax enable")
vim.cmd("hi clear")
vim.cmd("filetype plugin indent on")

local OS = getOS.get()
if OS == getOS.WINDOWS then
	vim.cmd("set shell=cmd")
elseif OS == getOS.LINUX then
	if utils.isFileInPath("zsh") then
		vim.cmd("set shell=zsh")
	elseif utils.isFileInPath("bash") then
		vim.cmd("set shell=bash")
	else
		vim.cmd("set shell=sh")
	end
-- else use the default of nvim
end
