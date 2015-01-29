" Vim compiler file
" Compiler:     Jasmine
" Maintainer:   Liam Wilkins
" URL:          https://github.com/lwilkins/vim-jasmine-compiler

if exists("current_compiler")
  finish
endif
let current_compiler = "jasmine"

if exists(":CompilerSet") != 2          " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=jasmine\ [$*\]

CompilerSet errorformat=
