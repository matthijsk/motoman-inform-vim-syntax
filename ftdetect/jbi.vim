" Vim file type detect for the Motoman INFORM III robot programming language.
" Language:	INFORM III
" Maintainer:	Matthijs Kool <matthijzkNOSPAMPLZgmailKTHXBAIcom>
" Contributor:  Patrick Meiser-Knosowski knosowski@graeff.de
" Last Change:	2019 Nov 17

" Detect INFORM III filetype
au BufRead,BufnewFile \c*.jbi setf jbi
