if exists("current_compiler")
  finish
endif
let current_compiler = "flake8"

if exists(":CompilerSet") != 2                " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=flake8\ %
CompilerSet errorformat=%E%f:%l:\ could\ not\ compile,
                        \%-Z%p^,
                        \%A%f:%l:%c:\ %t%n\ %m,
                        \%A%f:%l:\ %t%n\ %m,
                        \%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save

