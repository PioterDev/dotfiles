setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"
setlocal expandtab

hi link @keyword.conditional.c_sharp @keyword.c_sharp
hi link @keyword.repeat.c_sharp @keyword.c_sharp
hi link @keyword.return.c_sharp @keyword.c_sharp
hi link @keyword.type.c_sharp @keyword.c_sharp
hi link @keyword.operator.c_sharp @keyword.c_sharp
hi link @keyword.exception.c_sharp @keyword.c_sharp
hi link @keyword.coroutine.c_sharp @keyword.c_sharp
hi link @keyword.directive.c_sharp @keyword.c_sharp

hi link @keyword.import.c_sharp @keyword.c_sharp
hi @attribute.c_sharp ctermfg=Magenta guifg=#ed3da4
hi @keyword.c_sharp ctermfg=Yellow guifg=Yellow gui=bold

hi @keyword.modifier.c_sharp ctermfg=Blue guifg=#84a3ff

hi link @boolean.c_sharp @constant.c_sharp
hi @constant.c_sharp ctermfg=LightBlue guifg=#00b1f7 gui=bold
hi link @constant.macro.c_sharp @constant.c_sharp

hi link @constant.builtin.c_sharp @variable.builtin.c_sharp
hi @variable.builtin.c_sharp ctermfg=Red guifg=#fc07bf

hi @function.method.c_sharp ctermfg=Yellow guifg=#cfed3d

hi @type.builtin.c_sharp ctermfg=Blue guifg=#84c1ff
hi @type.c_sharp ctermfg=Green guifg=#43ed3d

hi link @variable.member.c_sharp @variable.c_sharp
hi link @variable.parameter.c_sharp @variable.c_sharp
hi @variable.c_sharp ctermfg=Cyan guifg=#99e2ff

hi link @module.c_sharp @type.c_sharp


hi @comment.c_sharp ctermfg=DarkGrey guifg=#606060
ino /**<CR> <Esc>:lua require('neogen').generate()<CR>
ino /* /**/<left><left>  <left>

