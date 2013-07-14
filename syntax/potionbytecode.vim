if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "potionbytecode"

syntax keyword potionBytecodeKeyword getlocal setlocal
syntax keyword potionBytecodeKeyword getupval setupval
syntax keyword potionBytecodeKeyword mult
syntax keyword potionBytecodeKeyword return call self
syntax keyword potionBytecodeKeyword move message proto
syntax keyword potionBytecodeKeyword loadpn loadk bind

syntax match potionBytecodeLineNumber "\v^\[\s*\d*\]"
syntax match potionBytecodeComment ";.*$"

highlight link potionBytecodeKeyword Keyword
highlight link potionBytecodeComment Comment
highlight link potionBytecodeLineNumber Comment
