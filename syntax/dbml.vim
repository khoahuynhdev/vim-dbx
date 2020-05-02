if version < 600
  syntax clear
elseif exists("b:current_syntaxtax")
  finish
endif

let b:current_syntaxtax="dbml"

syntax keyword dbmlKeyword Table Enum Indexes Project Tablegroup Note
syntax keyword dbmlBoolean true false TRUE FALSE
syntax keyword dbmlType  blob bool boolean char character date datetime decimal
syntax keyword dbmlType  float json int integer long number numeric rowid
syntax keyword dbmlType  smallint real text timestamp varchar
syntax match dbmlType "int\(8\|16\|32\|64\|128\)"

" Comments:
syntax match dbmlComment "\v//.*$" contains=@Spell

highlight  link dbmlKeyword Keyword
highlight  link dbmlComment Comment
