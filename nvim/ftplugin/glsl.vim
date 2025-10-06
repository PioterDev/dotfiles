setlocal softtabstop=4
let b:undo_ftplugin = "setl softtabstop<"
setlocal expandtab

hi @keyword.directive.glsl ctermfg=Yellow guifg=Yellow gui=bold
hi @keyword.modifier.glsl ctermfg=Yellow guifg=Yellow gui=bold

hi @variable.glsl ctermfg=Cyan guifg=#99e2ff
