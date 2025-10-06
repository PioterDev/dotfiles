setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"



hi link @keyword.directive.cpp @keyword.cpp
hi link @keyword.directive.define.cpp @keyword.cpp
hi link @keyword.import.cpp @keyword.cpp
hi link @keyword.conditional.cpp @keyword.cpp
hi link @keyword.repeat.cpp @keyword.cpp
hi link @keyword.return.cpp @keyword.cpp
hi link @keyword.type.cpp @keyword.cpp
hi link @keyword.operator.cpp @keyword.cpp
hi link @keyword.exception.cpp @keyword.cpp
hi @label.cpp ctermfg=Magenta guifg=#ed3da4
hi @keyword.cpp ctermfg=Yellow guifg=Yellow gui=bold
hi @keyword.modifier.cpp ctermfg=Blue guifg=#84a3ff


hi link @constant.macro.cpp @constant.cpp
hi link @boolean.cpp @constant.cpp
hi @constant.cpp ctermfg=LightBlue guifg=#00b1f7 gui=bold

hi link @constant.builtin.cpp @variable.builtin.cpp
hi @variable.builtin.cpp ctermfg=Red guifg=#fc07bf 

hi @function.macro.cpp ctermfg=Yellow guifg=#fc9207i
hi link @function.call.cpp @function.cpp
hi link @constructor.cpp @function.call.cpp
hi @function.cpp ctermfg=Yellow guifg=#cfed3d

hi @type.builtin.cpp ctermfg=Blue guifg=#84c1ff
hi link @type.definition.cpp @type.cpp
hi @type.cpp ctermfg=Green guifg=#43ed3d

hi link @variable.parameter.cpp @variable.cpp
hi link @variable.member.cpp @variable.cpp
hi @variable.cpp ctermfg=Cyan guifg=#99e2ff

hi @comment.cpp ctermfg=DarkGrey guifg=#606060
ino /* /**/<left><left>  <left>

