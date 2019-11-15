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
let b:undo_ftplugin = "setlocal sua<"

if has("win32")
	" filename must not include : because of JOB:JOBNAME
	setlocal isfname-=:
  " filename must not include \ because of JOB:\FOLDERNAME\JOBNAME
  setlocal isfname-=\
endif
let b:undo_ftplugin += " isf<"

let &cpo = s:keepcpo
unlet s:keepcpo
