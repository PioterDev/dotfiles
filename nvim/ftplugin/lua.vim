setlocal softtabstop=2

hi link @keyword.conditional.lua @keyword.lua
hi link @keyword.repeat.lua @keyword.lua
hi link @keyword.return.lua @keyword.lua
hi link @keyword.operator.lua @keyword.lua
hi link @keyword.function.lua @keyword.lua
hi @keyword.lua ctermfg=Yellow guifg=Yellow gui=bold

hi link @boolean.lua @constant.lua
hi @constant.lua ctermfg=LightBlue guifg=#00b1f7 gui=bold

hi link @constant.builtin.lua @variable.builtin.lua
hi @variable.builtin.lua ctermfg=Red guifg=#fc07bf

hi link @variable.member.lua @variable.lua
hi link @variable.parameter.lua @variable.lua
hi @variable.lua ctermfg=Cyan guifg=#99e2ff

hi @function.builtin.lua ctermfg=Magenta guifg=#f527d6
