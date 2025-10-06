" inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
" inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
" inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
" inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "'" ? "\<Right>" : "''<left>"
" inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"<left>"

setlocal indentexpr=IndentExpr()

if exists("*IndentExpr") | finish | endif

function! IndentExpr()
	let indentTo = cindent(v:lnum)
	let previousLine = getline(prevnonblank(v:lnum - 1))
	let currentLine = getline(v:lnum)

	if previousLine =~# '^\s*@.*$'
		let indentTo = indent(v:lnum - 1)
	endif
	if previousLine =~# '{$'
		let indentTo = indent(v:lnum - 1) + &shiftWidth
	endif

	return indentTo
endfunction
