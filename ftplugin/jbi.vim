
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:keepcpo = &cpo
set cpo&vim

setlocal suffixesadd+=.jbi,.JBI
setlocal isfname-=:

let b:undo_ftplugin = "setlocal sua<"

let &cpo = s:keepcpo
unlet s:keepcpo
