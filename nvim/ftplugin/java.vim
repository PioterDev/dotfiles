setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"



"hi link @keyword.directive.cpp @keyword.cpp
"hi link @keyword.directive.define.cpp @keyword.cpp
"hi link @keyword.import.cpp @keyword.cpp
hi link @keyword.conditional.java @keyword.java
hi link @keyword.repeat.java @keyword.java
hi link @keyword.return.java @keyword.java
hi link @keyword.type.java @keyword.java
hi link @keyword.operator.java @keyword.java
hi link @keyword.exception.java @keyword.java
"hi @label.cpp ctermfg=Magenta guifg=#ed3da4

hi link @keyword.import.java @keyword.java
"hi link @attribute.java @keyword.java
hi @attribute.java ctermfg=Magenta guifg=#ed3da4
hi @keyword.java ctermfg=Yellow guifg=Yellow gui=bold

hi @keyword.modifier.java ctermfg=Blue guifg=#84a3ff

"hi link @constant.macro.cpp @constant.cpp
hi link @boolean.java @constant.java
hi @constant.java ctermfg=LightBlue guifg=#00b1f7 gui=bold

"hi link @constant.builtin.cpp @variable.builtin.cpp
"hi @variable.builtin.cpp ctermfg=Red guifg=#fc07bf 

"hi @function.macro.cpp ctermfg=Yellow guifg=#fc9207i
"hi link @function.call.cpp @function.cpp
"hi link @constructor.cpp @function.call.cpp
hi @function.method.java ctermfg=Yellow guifg=#cfed3d

hi @type.builtin.java ctermfg=Blue guifg=#84c1ff
"hi link @type.definition.cpp @type.cpp
hi @type.java ctermfg=Green guifg=#43ed3d

hi link @variable.member.java @variable.java
hi link @variable.parameter.java @variable.java
hi @variable.java ctermfg=Cyan guifg=#99e2ff

hi @comment.cpp ctermfg=DarkGrey guifg=#606060
ino /* /**/<left><left>  <left>

