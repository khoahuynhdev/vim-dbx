if version < 600
  syntax clear
elseif exists("b:current_syntaxtax")
  finish
endif

" Keywords:
syntax keyword dbmlKeyword Table Enum Indexes Project Tablegroup Note Ref
syntax keyword dbmlBoolean true false TRUE FALSE
syntax keyword dbmlType  blob bool boolean char character date datetime decimal
syntax keyword dbmlType  float json int integer long number numeric rowid
syntax keyword dbmlType  smallint real text timestamp varchar
syntax match dbmlType "int\(8\|16\|32\|64\|128\)"

" Comments:
syntax match dbmlComment "\v//.*$" contains=@Spell

" Strings:
syntax region dbmlString start=/\v'/ skip=/\v\\'/ end=/\v'/ oneline
syntax region dbmlMultilineString start=/\v'''/ skip=/\v\\'''/ end=/\v'''/
syntax region dbmlColumnString start=/\v"/ skip=/\v\\"/ end=/\v"/


syntax region dbmlElementBlock start=/\v\{/ end=/\v\}/ fold transparent


highlight link dbmlKeyword Keyword
highlight link dbmlComment Comment
highlight link dbmlMultilineString String
highlight link dbmlString String
highlight link dbmlColumnString SpecialChar

setlocal commentstring=//\ %s
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

let b:current_syntaxtax="dbml"
