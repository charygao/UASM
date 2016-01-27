; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
COMM	cntppl0:DWORD
COMM	cntppl1:DWORD
COMM	cntppl2:DWORD
_DATA	ENDS
_BSS	SEGMENT
$SG10883 DB	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG10882 DB	'PreprocessLine: >%s<', 0aH, 00H
	ORG $+2
$SG10884 DB	'PreprocessLine(%s): >%s< cmt=%s', 0aH, 00H
_DATA	ENDS
PUBLIC	WriteCodeLabel
PUBLIC	PreprocessLine
EXTRN	DoDebugMsg1:PROC
EXTRN	EmitErr:PROC
EXTRN	ParseLine:PROC
EXTRN	WritePreprocessedLine:PROC
EXTRN	Tokenize:PROC
EXTRN	CreateConstant:PROC
EXTRN	ExpandText:PROC
EXTRN	ExpandLine:PROC
EXTRN	GetTopSrcName:PROC
EXTRN	StoreLine:PROC
EXTRN	LstWrite:PROC
EXTRN	LstWriteSrcLine:PROC
EXTRN	_RTC_InitBase:PROC
EXTRN	_RTC_Shutdown:PROC
EXTRN	Options:BYTE
EXTRN	ModuleInfo:BYTE
EXTRN	Parse_Pass:DWORD
EXTRN	CurrIfState:DWORD
EXTRN	StoreState:BYTE
EXTRN	directive_tab:BYTE
pdata	SEGMENT
$pdata$WriteCodeLabel DD imagerel $LN6
	DD	imagerel $LN6+336
	DD	imagerel $unwind$WriteCodeLabel
$pdata$PreprocessLine DD imagerel $LN34
	DD	imagerel $LN34+937
	DD	imagerel $unwind$PreprocessLine
pdata	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
_RTC_Shutdown.rtc$TMZ DQ FLAT:_RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
_RTC_InitBase.rtc$IMZ DQ FLAT:_RTC_InitBase
rtc$IMZ	ENDS
xdata	SEGMENT
$unwind$WriteCodeLabel DD 022301H
	DD	0700b520fH
$unwind$PreprocessLine DD 022301H
	DD	0700bb20fH
xdata	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\preproc.c
_TEXT	SEGMENT
i$ = 32
sym$1 = 40
tv74 = 48
tv135 = 56
tv227 = 64
tv189 = 72
tv211 = 76
tv228 = 80
line$ = 112
tokenarray$ = 120
PreprocessLine PROC

; 73   : {

$LN34:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 96					; 00000060H
	mov	rdi, rsp
	mov	ecx, 24
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+112]

; 74   :     int i;
; 75   : 
; 76   :     /* v2.11: GetTextLine() removed - this is now done in ProcessFile() */
; 77   : 
; 78   :     /* v2.08: moved here from GetTextLine() */
; 79   :     ModuleInfo.CurrComment = NULL;

	mov	QWORD PTR ModuleInfo+472, 0

; 80   :     /* v2.06: moved here from Tokenize() */
; 81   :     ModuleInfo.line_flags = 0;

	mov	BYTE PTR ModuleInfo+398, 0

; 82   :     /* Token_Count is the number of tokens scanned */
; 83   :     Token_Count = Tokenize( line, 0, tokenarray, TOK_DEFAULT );

	xor	r9d, r9d
	mov	r8, QWORD PTR tokenarray$[rsp]
	xor	edx, edx
	mov	rcx, QWORD PTR line$[rsp]
	call	Tokenize
	mov	DWORD PTR ModuleInfo+496, eax

; 84   : 
; 85   : #ifdef DEBUG_OUT
; 86   :     cntppl0++;

	mov	eax, DWORD PTR cntppl0
	inc	eax
	mov	DWORD PTR cntppl0, eax

; 87   :     if ( ModuleInfo.GeneratedCode )

	cmp	DWORD PTR ModuleInfo+456, 0
	je	SHORT $LN4@Preprocess

; 88   :         DebugMsg1(("PreprocessLine: >%s<\n", line ));

	mov	rdx, QWORD PTR line$[rsp]
	lea	rcx, OFFSET FLAT:$SG10882
	call	DoDebugMsg1
	jmp	SHORT $LN5@Preprocess
$LN4@Preprocess:

; 89   :     else
; 90   :         DebugMsg1(("PreprocessLine(%s): >%s< cmt=%s\n", GetTopSrcName(), line, ModuleInfo.CurrComment ? ModuleInfo.CurrComment : "" ));

	cmp	QWORD PTR ModuleInfo+472, 0
	je	SHORT $LN28@Preprocess
	mov	rax, QWORD PTR ModuleInfo+472
	mov	QWORD PTR tv74[rsp], rax
	jmp	SHORT $LN29@Preprocess
$LN28@Preprocess:
	lea	rax, OFFSET FLAT:$SG10883
	mov	QWORD PTR tv74[rsp], rax
$LN29@Preprocess:
	call	GetTopSrcName
	mov	r9, QWORD PTR tv74[rsp]
	mov	r8, QWORD PTR line$[rsp]
	mov	rdx, rax
	lea	rcx, OFFSET FLAT:$SG10884
	call	DoDebugMsg1
$LN5@Preprocess:

; 91   : #endif
; 92   : 
; 93   : #if REMOVECOMENT == 0
; 94   :     if ( Token_Count == 0 && ( CurrIfState == BLOCK_ACTIVE || ModuleInfo.listif ) )

	cmp	DWORD PTR ModuleInfo+496, 0
	jne	SHORT $LN6@Preprocess
	cmp	DWORD PTR CurrIfState, 0
	je	SHORT $LN7@Preprocess
	mov	eax, DWORD PTR ModuleInfo+408
	shr	eax, 13
	and	eax, 1
	test	eax, eax
	je	SHORT $LN6@Preprocess
$LN7@Preprocess:

; 95   :         LstWriteSrcLine();

	call	LstWriteSrcLine
$LN6@Preprocess:

; 96   : #endif
; 97   : 
; 98   :     if ( Token_Count == 0 )

	cmp	DWORD PTR ModuleInfo+496, 0
	jne	SHORT $LN8@Preprocess

; 99   :         return( 0 );

	xor	eax, eax
	jmp	$LN1@Preprocess
$LN8@Preprocess:

; 100  : 
; 101  : #ifdef DEBUG_OUT
; 102  :     /* option -np, skip preprocessor? */
; 103  :     if ( Options.skip_preprocessor )

	movzx	eax, BYTE PTR Options+22
	test	eax, eax
	je	SHORT $LN9@Preprocess

; 104  :         return( Token_Count );

	mov	eax, DWORD PTR ModuleInfo+496
	jmp	$LN1@Preprocess
$LN9@Preprocess:

; 105  : #endif
; 106  : 
; 107  :     /* CurrIfState != BLOCK_ACTIVE && Token_Count == 1 | 3 may happen
; 108  :      * if a conditional assembly directive has been detected by Tokenize().
; 109  :      * However, it's important NOT to expand then */
; 110  :     if ( CurrIfState == BLOCK_ACTIVE ) {

	cmp	DWORD PTR CurrIfState, 0
	jne	SHORT $LN10@Preprocess

; 111  :         if ( ( tokenarray[Token_Count].bytval & TF3_EXPANSION ? ExpandText( line, tokenarray, TRUE ) : ExpandLine( line, tokenarray ) ) < NOT_ERROR )

	movsxd	rax, DWORD PTR ModuleInfo+496
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax+1]
	and	eax, 2
	test	eax, eax
	je	SHORT $LN30@Preprocess
	mov	r8d, 1
	mov	rdx, QWORD PTR tokenarray$[rsp]
	mov	rcx, QWORD PTR line$[rsp]
	call	ExpandText
	mov	DWORD PTR tv135[rsp], eax
	jmp	SHORT $LN31@Preprocess
$LN30@Preprocess:
	mov	rdx, QWORD PTR tokenarray$[rsp]
	mov	rcx, QWORD PTR line$[rsp]
	call	ExpandLine
	mov	DWORD PTR tv135[rsp], eax
$LN31@Preprocess:
	cmp	DWORD PTR tv135[rsp], 0
	jge	SHORT $LN11@Preprocess

; 112  :             return( 0 );

	xor	eax, eax
	jmp	$LN1@Preprocess
$LN11@Preprocess:
$LN10@Preprocess:

; 113  :     }
; 114  : 
; 115  :     DebugCmd( cntppl1++ );

	mov	eax, DWORD PTR cntppl1
	inc	eax
	mov	DWORD PTR cntppl1, eax

; 116  : 
; 117  :     i = 0;

	mov	DWORD PTR i$[rsp], 0

; 118  :     if ( Token_Count > 2 && ( tokenarray[1].token == T_COLON || tokenarray[1].token == T_DBL_COLON ) )

	cmp	DWORD PTR ModuleInfo+496, 2
	jle	SHORT $LN12@Preprocess
	mov	eax, 32					; 00000020H
	imul	rax, rax, 1
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 58					; 0000003aH
	je	SHORT $LN13@Preprocess
	mov	eax, 32					; 00000020H
	imul	rax, rax, 1
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 13
	jne	SHORT $LN12@Preprocess
$LN13@Preprocess:

; 119  :         i = 2;

	mov	DWORD PTR i$[rsp], 2
$LN12@Preprocess:

; 120  : 
; 121  :     /* handle "preprocessor" directives:
; 122  :      * IF, ELSE, ENDIF, ...
; 123  :      * FOR, REPEAT, WHILE, ...
; 124  :      * PURGE
; 125  :      * INCLUDE
; 126  :      * since v2.05, error directives are no longer handled here!
; 127  :      */
; 128  :     if ( tokenarray[i].token == T_DIRECTIVE &&

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 3
	jne	SHORT $LN14@Preprocess
	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax+1]
	cmp	eax, 3
	jg	SHORT $LN14@Preprocess

; 129  :         tokenarray[i].dirtype <= DRT_INCLUDE ) {
; 130  : 
; 131  :         /* if i != 0, then a code label is located before the directive */
; 132  :         if ( i > 1 ) {

	cmp	DWORD PTR i$[rsp], 1
	jle	SHORT $LN15@Preprocess

; 133  :             if ( ERROR == WriteCodeLabel( line, tokenarray ) )

	mov	rdx, QWORD PTR tokenarray$[rsp]
	mov	rcx, QWORD PTR line$[rsp]
	call	WriteCodeLabel
	cmp	eax, -1
	jne	SHORT $LN16@Preprocess

; 134  :                 return( 0 );

	xor	eax, eax
	jmp	$LN1@Preprocess
$LN16@Preprocess:
$LN15@Preprocess:

; 135  :         }
; 136  :         directive_tab[tokenarray[i].dirtype]( i, tokenarray );

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax+1]
	lea	rcx, OFFSET FLAT:directive_tab
	mov	QWORD PTR tv227[rsp], rcx
	mov	rdx, QWORD PTR tokenarray$[rsp]
	mov	ecx, DWORD PTR i$[rsp]
	mov	r8, QWORD PTR tv227[rsp]
	call	QWORD PTR [r8+rax*8]

; 137  :         return( 0 );

	xor	eax, eax
	jmp	$LN1@Preprocess
$LN14@Preprocess:

; 138  :     }
; 139  : 
; 140  :     /* handle preprocessor directives which need a label */
; 141  : 
; 142  :     if ( tokenarray[0].token == T_ID && tokenarray[1].token == T_DIRECTIVE ) {

	mov	eax, 32					; 00000020H
	imul	rax, rax, 0
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 8
	jne	$LN17@Preprocess
	mov	eax, 32					; 00000020H
	imul	rax, rax, 1
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 3
	jne	$LN17@Preprocess

; 143  :         struct asym *sym;
; 144  :         switch ( tokenarray[1].dirtype ) {

	mov	eax, 32					; 00000020H
	imul	rax, rax, 1
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax+1]
	mov	BYTE PTR tv189[rsp], al
	cmp	BYTE PTR tv189[rsp], 4
	jb	$LN2@Preprocess
	cmp	BYTE PTR tv189[rsp], 6
	jbe	$LN26@Preprocess
	cmp	BYTE PTR tv189[rsp], 47			; 0000002fH
	je	SHORT $LN18@Preprocess
	jmp	$LN2@Preprocess
$LN18@Preprocess:

; 145  :         case DRT_EQU:
; 146  :             /*
; 147  :              * EQU is a special case:
; 148  :              * If an EQU directive defines a text equate
; 149  :              * it MUST be handled HERE and 0 must be returned to the caller.
; 150  :              * This will prevent further processing, nothing will be stored
; 151  :              * if FASTPASS is on.
; 152  :              * Since one cannot decide whether EQU defines a text equate or
; 153  :              * a number before it has scanned its argument, we'll have to
; 154  :              * handle it in ANY case and if it defines a number, the line
; 155  :              * must be stored and, if -EP is set, written to stdout.
; 156  :              */
; 157  :             if ( sym = CreateConstant( tokenarray ) ) {

	mov	rcx, QWORD PTR tokenarray$[rsp]
	call	CreateConstant
	mov	QWORD PTR sym$1[rsp], rax
	cmp	QWORD PTR sym$1[rsp], 0
	je	$LN19@Preprocess

; 158  :                 if ( sym->state != SYM_TMACRO ) {

	mov	rax, QWORD PTR sym$1[rsp]
	cmp	DWORD PTR [rax+32], 10
	je	SHORT $LN20@Preprocess

; 159  : #if FASTPASS
; 160  :                     if ( StoreState ) FStoreLine( 0 );

	movzx	eax, BYTE PTR StoreState
	test	eax, eax
	je	SHORT $LN21@Preprocess
	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN22@Preprocess
	xor	r8d, r8d
	xor	edx, edx
	mov	rcx, QWORD PTR ModuleInfo+464
	call	StoreLine
$LN22@Preprocess:
$LN21@Preprocess:

; 161  : #endif
; 162  :                     if ( Options.preprocessor_stdout == TRUE )

	movzx	eax, BYTE PTR Options+141
	cmp	eax, 1
	jne	SHORT $LN24@Preprocess

; 163  :                         WritePreprocessedLine( line );

	mov	rcx, QWORD PTR line$[rsp]
	call	WritePreprocessedLine
$LN24@Preprocess:
$LN20@Preprocess:

; 164  :                 }
; 165  :                 /* v2.03: LstWrite() must be called AFTER StoreLine()! */
; 166  :                 if ( ModuleInfo.list == TRUE ) {

	mov	eax, DWORD PTR ModuleInfo+408
	shr	eax, 11
	and	eax, 1
	cmp	eax, 1
	jne	SHORT $LN25@Preprocess

; 167  :                     LstWrite( sym->state == SYM_INTERNAL ? LSTTYPE_EQUATE : LSTTYPE_TMACRO, 0, sym );

	mov	rax, QWORD PTR sym$1[rsp]
	cmp	DWORD PTR [rax+32], 1
	jne	SHORT $LN32@Preprocess
	mov	DWORD PTR tv211[rsp], 2
	jmp	SHORT $LN33@Preprocess
$LN32@Preprocess:
	mov	DWORD PTR tv211[rsp], 3
$LN33@Preprocess:
	mov	r8, QWORD PTR sym$1[rsp]
	xor	edx, edx
	mov	ecx, DWORD PTR tv211[rsp]
	call	LstWrite
$LN25@Preprocess:
$LN19@Preprocess:

; 168  :                 }
; 169  :             }
; 170  :             return( 0 );

	xor	eax, eax
	jmp	SHORT $LN1@Preprocess
$LN26@Preprocess:

; 171  :         case DRT_MACRO:
; 172  :         case DRT_CATSTR: /* CATSTR + TEXTEQU directives */
; 173  :         case DRT_SUBSTR:
; 174  :             directive_tab[tokenarray[1].dirtype]( 1, tokenarray );

	mov	eax, 32					; 00000020H
	imul	rax, rax, 1
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax+1]
	lea	rcx, OFFSET FLAT:directive_tab
	mov	QWORD PTR tv228[rsp], rcx
	mov	rdx, QWORD PTR tokenarray$[rsp]
	mov	ecx, 1
	mov	r8, QWORD PTR tv228[rsp]
	call	QWORD PTR [r8+rax*8]

; 175  :             return( 0 );

	xor	eax, eax
	jmp	SHORT $LN1@Preprocess
$LN2@Preprocess:
$LN17@Preprocess:

; 176  :         }
; 177  :     }
; 178  : 
; 179  :     DebugCmd( cntppl2++ );

	mov	eax, DWORD PTR cntppl2
	inc	eax
	mov	DWORD PTR cntppl2, eax

; 180  :     return( Token_Count );

	mov	eax, DWORD PTR ModuleInfo+496
$LN1@Preprocess:

; 181  : }

	add	rsp, 96					; 00000060H
	pop	rdi
	ret	0
PreprocessLine ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\preproc.c
_TEXT	SEGMENT
oldcnt$ = 32
oldtoken$ = 36
oldchar$ = 40
line$ = 64
tokenarray$ = 72
WriteCodeLabel PROC

; 40   : {

$LN6:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+64]

; 41   :     int oldcnt;
; 42   :     int oldtoken;
; 43   :     char oldchar;
; 44   : 
; 45   :     if ( tokenarray[0].token != T_ID ) {

	mov	eax, 32					; 00000020H
	imul	rax, rax, 0
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	cmp	eax, 8
	je	SHORT $LN2@WriteCodeL

; 46   :         return( EmitErr( SYNTAX_ERROR_EX, tokenarray[0].string_ptr ) );

	mov	eax, 32					; 00000020H
	imul	rax, rax, 0
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rdx, QWORD PTR [rcx+rax+8]
	mov	ecx, 209				; 000000d1H
	call	EmitErr
	jmp	$LN1@WriteCodeL
$LN2@WriteCodeL:

; 47   :     }
; 48   :     /* ensure the listing is written with the FULL source line */
; 49   :     if ( CurrFile[LST] ) LstWrite( LSTTYPE_LABEL, 0, NULL );

	mov	eax, 8
	imul	rax, rax, 2
	lea	rcx, OFFSET FLAT:ModuleInfo+96
	cmp	QWORD PTR [rcx+rax], 0
	je	SHORT $LN3@WriteCodeL
	xor	r8d, r8d
	xor	edx, edx
	mov	ecx, 7
	call	LstWrite
$LN3@WriteCodeL:

; 50   :     /* v2.04: call ParseLine() to parse the "label" part of the line */
; 51   :     oldcnt = Token_Count;

	mov	eax, DWORD PTR ModuleInfo+496
	mov	DWORD PTR oldcnt$[rsp], eax

; 52   :     oldtoken = tokenarray[2].token;

	mov	eax, 32					; 00000020H
	imul	rax, rax, 2
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	mov	DWORD PTR oldtoken$[rsp], eax

; 53   :     oldchar = *tokenarray[2].tokpos;

	mov	eax, 32					; 00000020H
	imul	rax, rax, 2
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rax, QWORD PTR [rcx+rax+24]
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR oldchar$[rsp], al

; 54   :     Token_Count = 2;

	mov	DWORD PTR ModuleInfo+496, 2

; 55   :     tokenarray[2].token = T_FINAL;

	mov	eax, 32					; 00000020H
	imul	rax, rax, 2
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	BYTE PTR [rcx+rax], 0

; 56   :     *tokenarray[2].tokpos = NULLC;

	mov	eax, 32					; 00000020H
	imul	rax, rax, 2
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rax, QWORD PTR [rcx+rax+24]
	mov	BYTE PTR [rax], 0

; 57   :     ParseLine( tokenarray );

	mov	rcx, QWORD PTR tokenarray$[rsp]
	call	ParseLine

; 58   :     if ( Options.preprocessor_stdout == TRUE )

	movzx	eax, BYTE PTR Options+141
	cmp	eax, 1
	jne	SHORT $LN4@WriteCodeL

; 59   :         WritePreprocessedLine( line );

	mov	rcx, QWORD PTR line$[rsp]
	call	WritePreprocessedLine
$LN4@WriteCodeL:

; 60   :     Token_Count = oldcnt;

	mov	eax, DWORD PTR oldcnt$[rsp]
	mov	DWORD PTR ModuleInfo+496, eax

; 61   :     tokenarray[2].token = oldtoken;

	mov	eax, 32					; 00000020H
	imul	rax, rax, 2
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	edx, BYTE PTR oldtoken$[rsp]
	mov	BYTE PTR [rcx+rax], dl

; 62   :     *tokenarray[2].tokpos = oldchar;

	mov	eax, 32					; 00000020H
	imul	rax, rax, 2
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rax, QWORD PTR [rcx+rax+24]
	movzx	ecx, BYTE PTR oldchar$[rsp]
	mov	BYTE PTR [rax], cl

; 63   :     return( NOT_ERROR );

	xor	eax, eax
$LN1@WriteCodeL:

; 64   : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
WriteCodeLabel ENDP
_TEXT	ENDS
END
