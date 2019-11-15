" Vim file type plugin for the Motoman INFORM III robot programming language.
" Language:	INFORM III
" Maintainer:	Matthijs Kool <matthijzkNOSPAMPLZgmailKTHXBAIcom>
" Contributor:  Patrick Meiser-Knosowski knosowski@graeff.de
" Last Change:	2017 Nov 15

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:keepcpo = &cpo
set cpo&vim

setlocal suffixesadd+=.jbi,.JBI
setlocal isfname-=:

let b:undo_ftplugin = "setlocal sua< isf<"

let &cpo = s:keepcpo
unlet s:keepcpo
