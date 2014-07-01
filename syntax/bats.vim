if exists("b:current_syntax")
  finish
endif

source $VIMRUNTIME/syntax/sh.vim
unlet b:current_syntax

syn match batsTest              "\v\@test"
syn keyword batsKeyword         load

syn keyword batsKeyword         run containedin=shExpr contained

syn keyword batsKeyword         assert_success containedin=shExpr contained
syn keyword batsKeyword         assert_failure containedin=shExpr contained
syn keyword batsKeyword         assert_line containedin=shExpr contained
syn keyword batsKeyword         assert_output containedin=shExpr contained
syn keyword batsKeyword         assert_equal containedin=shExpr contained
syn keyword batsKeyword         assert containedin=shExpr contained

hi def link batsTest            Identifier
hi def link batsKeyword         Keyword

let b:current_syntax = "bats"
