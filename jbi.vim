" Vim syntax file for the Motoman INFORM III robot programming language.
" Language:	INFORM III
" Maintainer:	Matthijs Kool <matthijzkNOSPAMPLZgmailKTHXBAIcom>
" Last Change:	2012 Feb 13 

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

" I/O instructions
syn keyword	jbiFunction DOUT DIN WAIT PULSE AOUT ARATION ARATIOF ANTOUT

" Control instructions
syn keyword	jbiStatement JUMP CALL TIMER RET NOP PAUSE CWAIT NWAIT ENWAIT
\                            MSG ADVINIT ADVSTOP END PSTART PWAIT NSRCH

" Operating instructions
syn keyword	jbiFunction CLEAR INC DEC SET ADD SUB MUL DIV CNVRT AND OR NOT
\                           XOR MFRAME SETE GETE GETS SQRT SIN COS ATAN MULMAT
\                           INVMAT SETFILE GETFILE SETREG GETREG

" Move instructions
syn keyword	jbiFunction MOVJ MOVL MOVC MOVS IMOV SPEED REFP

" Shift instructions
syn keyword	jbiFunction SFTON SFTOF MSHIFT

" Arc welding instructions
syn keyword	jbiFunction ARCON ARCOF VWELD AWELD ARCSET WVON WVOF ARCCTS
\                           ARCCTE

syn keyword	jbiFunction RETRY REPLAY ANTSTK

" Handling instructions
syn keyword	jbiFunction HAND HSEN

" Spot welding instructions
syn keyword	jbiFunction GUNCL SPOT STROKE STRWAIT

" General purpose instructions
syn keyword	jbiFunction TOOLON TOOLOF

" Other
syn keyword	jbiFunction GETARG SETUALM DIALOG GETTOOL SETTOOL

" Boolean keywords
syn keyword	jbiBoolean ON OFF HIGH LOW

" Conditional statements
syn keyword	jbiConditional IF ELSE SWITCH ENDSWITCH IFTHEN ENDIF ANDIF
\                              ORIF ELSEIF ENDWAIT

" Repeat statements
syn keyword	jbiRepeat UNTIL WHILE ENDWHILE

" Label statements
syn keyword	jbiLabel CASE DEFAULT LABEL QUE

" Operators
syn keyword	jbiOperator EXPRESS

syn keyword	jbiFunction MID VAL

" Function parameters
syn keyword	jbiType ACC ALL AMP ANGL ANT AN3 AN4 ATT AV AVP BF BP BV CR
\                       DEC DIS ENTRY EX FREQ LBP LEX MODE MT MTE MTF OFV PL
\                       PX RBn RF SMODE SPDL SRCH STn T TF UNITn V VE VJ VR
\                       WELDn WTM

" Inform types
syn match	jbiType /B\d\d\d\|B\[/hs=s,he=s+1
syn match	jbiType /LB\d\d\d\|LB\[/hs=s,he=s+2
syn match	jbiType /I\d\d\d\|I\[/hs=s,he=s+1
syn match	jbiType /LI\d\d\d\|LI\[/hs=s,he=s+2
syn match	jbiType /D\d\d\d\|D\[/hs=s,he=s+1
syn match	jbiType /LD\d\d\d\|LD\[/hs=s,he=s+2
syn match	jbiType /R\d\d\d\|R\[/hs=s,he=s+1
syn match	jbiType /LR\d\d\d\|LR\[/hs=s,he=s+2
syn match	jbiType /S\d\d\d\|S\[/hs=s,he=s+1
syn match	jbiType /LS\d\d\d\|LS\[/hs=s,he=s+2

syn match	jbiType /P\d\d\d\|P\[/hs=s,he=s+1
syn match	jbiType /PX\d\d\d\|PX\[/hs=s,he=s+2
syn match	jbiType /LP\d\d\d\|LP\[/hs=s,he=s+2
syn match	jbiType /LPX\d\d\d\|LPX\[/hs=s,he=s+3

" Special keywords
syn match	jbiSpecial "AEF#"
syn match	jbiSpecial "AG#"
syn match	jbiSpecial "AO#"
syn match	jbiSpecial "ARGF"
syn match	jbiSpecial "ASF#"
syn match	jbiSpecial "AT#"
syn match	jbiSpecial "FOREVER"
syn match	jbiSpecial "GUN#"
syn match	jbiSpecial "IARG#"
syn match	jbiSpecial "IN#"
syn match	jbiSpecial "IGH#"
syn match	jbiSpecial "IG#"
syn match	jbiSpecial "JET#"
syn match	jbiSpecial /JOB:/hs=s,he=e-1
syn match	jbiSpecial "LONG"
syn match	jbiSpecial "MREG#"
syn match	jbiSpecial "OT#"
syn match	jbiSpecial "OGH#"
syn match	jbiSpecial "OH#"
syn match	jbiSpecial "RIN#"
syn match	jbiSpecial "SHORT"
syn match	jbiSpecial "SIN#"
syn match	jbiSpecial "SOUT#"
syn match	jbiSpecial "TL#"
syn match	jbiSpecial "UF#"
syn match	jbiSpecial "WEV#"
syn match	jbiSpecial "$RV"

" Specify comment region
syn region	jbiComment start=+'+ end=+$+ contains=jbiTodo

" Specify string region
syn region	jbiString start=+"+ end=+"+ end=+$+

" Specify job header region
syn region	jbiHeader start=+/+ end=+$+ contains=jbiNumbers

syn match	jbiNumbers "[0-9]"

syn keyword	jbiTodo contained TODO FIXME

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_basic_syn_inits")
  if version < 508
    let did_basic_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jbiComment		Comment
  HiLink jbiString		String
  HiLink jbiNumbers		Number
  HiLink jbiBoolean		Boolean

  HiLink jbiFunction		Function

  HiLink jbiStatement		Statement
  HiLink jbiConditional		Conditional
  HiLink jbiRepeat		Repeat
  HiLink jbiLabel		Label
  HiLink jbiOperator		Operator

  HiLink jbiHeader		PreProc

  HiLink jbiType		Type

  HiLink jbiSpecial		Special

  HiLink jbiTodo		Todo

  delcommand HiLink
endif

let b:current_syntax = "jbi"

" vim: ts=8
