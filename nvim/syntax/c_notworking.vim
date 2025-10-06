if exists("b:current_sytax")
    finish
endif

sy case match

sy keyword cType auto bool char double enum float int long short void 
sy keyword cType _BitInt _Complex _Decimal128 _Decimal32 _Decimal64 _Generic _Imaginary

sy keyword cConstant true false nullptr

sy keyword cOperator sizeof typeof static_assert typeof_unqual 

sy keyword cStatement if else switch case default break for do while continue goto return typedef

sy keyword cStructure struct
sy keyword cStructure union

sy keyword cModifier alignas alignof const constexpr extern inline 
sy keyword cModifier register restrict static thread_local 
sy keyword cModifier unsigned signed volatile _Atomic 

sy match cInt '\d\+'
sy match cInt '[+-]\d\+'
sy match cInt '\d\+'

sy match cFloat '[+-]\d\+\.\d*'
sy match cFloat '[+-]\=\d[[0-9]]*[eE][\-+]\=\d\+'
sy match cFloat '\d[[0-9]]*[eE][\-+]\=\d\+'

sy region cBlock start=/{/ end=/}/ contains=ALL fold transparent 
sy region cString start=/"/ skip=/\\"/ end=/"/
sy region cSingleLineComment start="//" end=/$/ contained

sy match cLineContinue "\\$" contained
sy region cPreprocessorStatement start=/#/ end=/$/
	\ contains=cSingleLineComment,cLineContinue keepend

function! UpdateCTypes()
  " Clear existing keywords (optional)
  syntax clear cType 
  
  " Extract typedefs (simple example, adjust regex as necessary)
  let typedefs = []
  for line in getline(1, '$')
    if line =~ '^\s*typedef\s\+.*\s\+\(.*\)\s\+.*;'
      let type = matchstr(line, '^\s*typedef\s\+.*\s\+\(.*\)\s\+.*;')
      let typedefs += [matchstr(type, '\v\w+')]
    endif
  endfor

  " Update syntax highlighting for the typedefs
  for typedef in typedefs
    execute 'syntax keyword cType' . typedef
  endfor

  " Apply highlight group to these keywords
  highlight link cType Type
endfunction
