" Keywords
syntax keyword mylangKeyword void any int bool string char float
syntax keyword mylangKeyword struct import private public internal external as
syntax keyword mylangKeyword if else while for switch
syntax keyword mylangKeyword return break continue sizeof

" Booleans
syntax keyword mylangBoolean true false

" Types
syntax keyword mylangType void any int bool string char float

" PascalCase types: e.g. MyType, HTTPClient, XmlParser
syntax match mylangPascalType /\
\<[A-Z][a-z0-9]\+\([A-Z][a-z0-9]\+\)*\>\
\ze\($\|[^(]\)/ containedin=ALLBUT,mylangComment,mylangString

" Literals
syntax match mylangNumber /\v\d+(\.\d+)?/
syntax region mylangString start=/"/ skip=/\\"/ end=/"/ contains=mylangEscape
syntax match mylangEscape /\\./
syntax match mylangIdentifier /\<[A-Za-z_][A-Za-z0-9_]*\>/

" Comments (assuming C-style comments)
syntax match mylangComment "//.*"
syntax region mylangComment start="/\*" end="\*/"

" Punctuation
syntax match mylangPunct /[{}()\[\],.;@]/

syntax match mylangFunction /\<[A-Za-z_][A-Za-z0-9_]*\>\ze(/ containedin=ALLBUT,myLangComment,myLangString

syntax match mylangMember /\v((\.|-\>))@<=[A-Za-z_][A-Za-z0-9_]*/ containedin=ALLBUT,myLangComment,myLangString

syntax match mylangSection /\v\@[A-Za-z_][A-Za-z0-9_]*/ containedin=ALLBUT,mylangComment,mylangString

" Highlight groups
highlight link mylangKeyword       @keyword
highlight link mylangSection       @keyword
highlight link mylangBoolean       @boolean
highlight link mylangType          @type.builtin
highlight link mylangPascalType    @type
highlight link mylangNumber        @number
highlight link mylangString        @string
highlight link mylangEscape        @string.escape
highlight link mylangFunction      @function
highlight link mylangIdentifier    @variable
highlight link mylangMember        @variable.member
highlight link mylangComment       @comment
highlight link mylangOperator      @operator
highlight link mylangPunct         @punctuation.delimiter

" commenting
set commentstring=//\ %s
