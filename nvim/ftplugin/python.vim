setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"
setlocal noexpandtab

hi link @keyword.import.python @keyword.python
hi link @keyword.function.python @keyword.python
hi link @keyword.return.python @keyword.python
hi link @keyword.repeat.python @keyword.python
hi link @keyword.operator.python @keyword.python
hi link @keyword.conditional.python @keyword.python
hi link @keyword.exception.python @keyword.python
hi @keyword.python ctermfg=Yellow guifg=Yellow gui=bold

hi @type.python ctermfg=Green guifg=#43ed3d

" hi @module.python ctermfg=Green guifg=#73f527
hi link @module.python @variable.python
hi link @variable.parameter.python @variable.python
hi @variable.python ctermfg=Cyan guifg=#99e2ff

hi @function.builtin.python ctermfg=Magenta guifg=#f527d6

hi @boolean.python ctermfg=LightBlue guifg=#00b1f7 gui=bold
