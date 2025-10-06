setlocal softtabstop=2
setlocal shiftwidth=2
setlocal tabstop=2

hi @keyword.import.latex ctermfg=Yellow guifg=Yellow gui=bold
hi @label.latex ctermfg=Magenta guifg=#ed3da4
hi @module.latex ctermfg=Yellow guifg=Yellow

nmap <F3> :rightb ter<CR><C-w>15-ilatexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf *.tex<CR>
