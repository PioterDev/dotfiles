setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"



hi link @keyword.directive.cuda @keyword.cuda
hi link @keyword.directive.define.cuda @keyword.cuda
hi link @keyword.import.cuda @keyword.cuda
hi link @keyword.conditional.cuda @keyword.cuda
hi link @keyword.repeat.cuda @keyword.cuda
hi link @keyword.return.cuda @keyword.cuda
hi link @keyword.type.cuda @keyword.cuda
hi link @keyword.operator.cuda @keyword.cuda
hi link @keyword.exception.cuda @keyword.cuda
hi @label.cuda ctermfg=Magenta guifg=#ed3da4
hi @keyword.cuda ctermfg=Yellow guifg=Yellow gui=bold
hi @keyword.modifier.cuda ctermfg=Blue guifg=#84a3ff

hi link @constant.macro.cuda @constant.cuda
hi link @boolean.cuda @constant.cuda
hi @constant.cuda ctermfg=LightBlue guifg=#00b1f7 gui=bold

hi link @constant.builtin.cuda @variable.builtin.cuda
hi @variable.builtin.cuda ctermfg=Red guifg=#fc07bf 

hi @function.macro.cuda ctermfg=Yellow guifg=#cfed3d cterm=bold gui=bold
hi link @function.call.cuda @function.cuda
hi link @constructor.cuda @function.call.cuda
hi @function.cuda ctermfg=Yellow guifg=#cfed3d

hi @type.builtin.cuda ctermfg=Blue guifg=#84c1ff
hi link @type.definition.cuda @type.cuda
hi @type.cuda ctermfg=Green guifg=#43ed3d

hi link @variable.parameter.cuda @variable.cuda
hi link @variable.member.cuda @variable.cuda
hi @variable.cuda ctermfg=Cyan guifg=#99e2ff

hi @comment.cuda ctermfg=DarkGrey guifg=#606060
ino /* /**/<left><left>  <left>

