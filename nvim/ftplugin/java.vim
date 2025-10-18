setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"
setlocal expandtab



hi link @keyword.conditional.java @keyword.java
hi link @keyword.repeat.java @keyword.java
hi link @keyword.return.java @keyword.java
hi link @keyword.type.java @keyword.java
hi link @keyword.operator.java @keyword.java
hi link @keyword.exception.java @keyword.java

hi link @keyword.import.java @keyword.java
hi @attribute.java ctermfg=Magenta guifg=#ed3da4
hi @keyword.java ctermfg=Yellow guifg=Yellow gui=bold

hi @keyword.modifier.java ctermfg=Blue guifg=#84a3ff

hi link @boolean.java @constant.java
hi @constant.java ctermfg=LightBlue guifg=#00b1f7 gui=bold

hi link @constant.builtin.java @variable.builtin.java
hi @variable.builtin.java ctermfg=Red guifg=#fc07bf

hi @function.method.java ctermfg=Yellow guifg=#cfed3d

hi @type.builtin.java ctermfg=Blue guifg=#84c1ff
hi @type.java ctermfg=Green guifg=#43ed3d

hi link @variable.member.java @variable.java
hi link @variable.parameter.java @variable.java
hi @variable.java ctermfg=Cyan guifg=#99e2ff

hi @comment.java ctermfg=DarkGrey guifg=#606060
ino /**<CR> <Esc>:lua require('neogen').generate()<CR>
ino /* /**/<left><left>  <left>

