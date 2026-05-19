setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"
setlocal expandtab


"hi link @keyword.directive.c @keyword.c
"hi link @keyword.directive.define.c @keyword.c
hi link @keyword.import.go @keyword.go
hi link @keyword.function.go @keyword.go
hi link @keyword.repeat.go @keyword.go
hi link @keyword.conditional.go @keyword.go
"hi link @keyword.repeat.c @keyword.c
hi link @keyword.return.go @keyword.go
"hi link @keyword.type.c @keyword.c
"hi link @keyword.operator.c @keyword.c
"hi @label.c ctermfg=Magenta guifg=#ed3da4
hi @keyword.go ctermfg=Yellow guifg=Yellow gui=bold
"hi @keyword.modifier.c ctermfg=Blue guifg=#84a3ff

hi link @variable.parameter.go @variable.go
hi @variable.go ctermfg=Cyan guifg=#99e2ff

hi @constant.go ctermfg=LightBlue guifg=#00b1f7 gui=bold

hi @type.go ctermfg=Green guifg=#43ed3d

hi link @constant.builtin.go @function.builtin.go
hi @function.builtin.go ctermfg=Magenta guifg=#f527d6


hi link @module.go @variable.go

