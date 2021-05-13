" Vim file type plugin for the Motoman INFORM III robot programming language.
" Language:	INFORM III
" Maintainer:	Matthijs Kool <matthijzkNOSPAMPLZgmailKTHXBAIcom>
" Contributor:  Patrick Meiser-Knosowski knosowski@graeffrobotics.de
" Last Change:	29. Apr 2021

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
	let b:undo_ftplugin += " isf<"
endif

" set path to JOB/ folder if found one to three folder levels upwards
if expand('%:p') =~ '\v\c[\\/]JOB([\\/]\w+){1,3}[\\/]\w+\.jbi'
	execute 'setlocal path+=' . substitute( expand('%:p:h') , '\v\c([\\/])(JOB)%([\\/]\w+){1,3}' , '\1\2\1' , '') . "\\**"
	let b:undo_ftplugin += " pa<"
endif

let &cpo = s:keepcpo
unlet s:keepcpo
