setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"
setlocal expandtab


hi link @keyword.directive.c @keyword.c
hi link @keyword.directive.define.c @keyword.c
hi link @keyword.import.c @keyword.c
hi link @keyword.conditional.c @keyword.c
hi link @keyword.repeat.c @keyword.c
hi link @keyword.return.c @keyword.c
hi link @keyword.type.c @keyword.c
hi link @keyword.operator.c @keyword.c
hi @label.c ctermfg=Magenta guifg=#ed3da4
hi @keyword.c ctermfg=Yellow guifg=Yellow gui=bold
hi @keyword.modifier.c ctermfg=Blue guifg=#84a3ff

hi link cTypedef @keyword.c
hi link cStorageClass @keyword.modifier.c
hi link cInclude @keyword.import.c
hi link cDefine @keyword.directive.define.c
hi link cPreProc @keyword.directive.c
hi link cPreConditMatch @keyword.directive.c

hi link @constant.macro.c @constant.c
hi link @boolean.c @constant.c
hi @constant.c ctermfg=LightBlue guifg=#00b1f7 gui=bold

hi link @constant.builtin.c @variable.builtin.c
hi @variable.builtin.c ctermfg=Red guifg=#fc07bf

hi @function.macro.c ctermfg=Yellow guifg=#cfed3d cterm=bold gui=bold
hi link @function.call.c @function.c

hi @type.builtin.c ctermfg=Blue guifg=#84c1ff
hi link @type.definition.c @type.c
hi @type.c ctermfg=Green guifg=#43ed3d

hi link cType @type.c
hi link cStructure @keyword.c

hi link @variable.parameter.c @variable.c
hi @variable.c ctermfg=Cyan guifg=#99e2ff

hi link @character.c @string.c
hi link cCharacter String

""hi @comment.c ctermfg=DarkGrey guifg=#606060
""ino /* /**/<left><left>  <left>
ino /**<CR> <Esc>:lua require('neogen').generate()<CR>
" convert "//"-style comment to "/* */"
map <F2> :s/\/\//\/* <CR>gv:s/$/ *\/<CR>/\/\/<CR>
map <F3> :s/ \*\/$//<CR>gv:s/\/\* /\/\//<CR>/\/\* .* \*\/<CR>
