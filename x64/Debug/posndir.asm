; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
_DATA	ENDS
_DATA	SEGMENT
$SG10656 DB	'OrgDirective(%u) enter', 0aH, 00H
$SG10716 DB	'AlignDirective enter', 0aH, 00H
	ORG $+2
$SG10738 DB	'AlignDirective exit', 0aH, 00H
_DATA	ENDS
CONST	SEGMENT
NopList16 DB	03H
	DB	02eH
	DB	08bH
	DB	0c0H
	DB	08bH
	DB	0c0H
	DB	090H
	ORG $+1
NopList32 DB	07H
	DB	08dH
	DB	0a4H
	DB	024H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	08dH
	DB	080H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	02eH
	DB	08dH
	DB	044H
	DB	020H
	DB	00H
	DB	08dH
	DB	044H
	DB	020H
	DB	00H
	DB	08dH
	DB	040H
	DB	00H
	DB	08bH
	DB	0ffH
	DB	090H
	ORG $+3
NopList64 DB	07H
	DB	0fH
	DB	01fH
	DB	080H
	DB	00H
	DB	00H
	DB	00H
	DB	00H
	DB	066H
	DB	0fH
	DB	01fH
	DB	044H
	DB	00H
	DB	00H
	DB	0fH
	DB	01fH
	DB	044H
	DB	00H
	DB	00H
	DB	0fH
	DB	01fH
	DB	040H
	DB	00H
	DB	0fH
	DB	01fH
	DB	00H
	DB	066H
	DB	090H
	DB	090H
	ORG $+3
NopLists DQ	FLAT:NopList16
	DQ	FLAT:NopList32
	DQ	FLAT:NopList64
CONST	ENDS
PUBLIC	AlignCurrOffset
PUBLIC	OrgDirective
PUBLIC	AlignDirective
EXTRN	DoDebugMsg1:PROC
EXTRN	EmitError:PROC
EXTRN	EmitErr:PROC
EXTRN	EmitWarn:PROC
EXTRN	OutputByte:PROC
EXTRN	FillDataBytes:PROC
EXTRN	myltoa:PROC
EXTRN	GetCurrOffset:PROC
EXTRN	SetCurrOffset:PROC
EXTRN	GetCurrSegAlign:PROC
EXTRN	EvalOperand:PROC
EXTRN	SetStructCurrentOffset:PROC
EXTRN	AlignInStruct:PROC
EXTRN	LstWrite:PROC
EXTRN	StoreLine:PROC
EXTRN	_RTC_CheckStackVars:PROC
EXTRN	_RTC_InitBase:PROC
EXTRN	_RTC_Shutdown:PROC
EXTRN	_RTC_UninitUse:PROC
EXTRN	__GSHandlerCheck:PROC
EXTRN	__security_check_cookie:PROC
EXTRN	Options:BYTE
EXTRN	ModuleInfo:BYTE
EXTRN	Parse_Pass:DWORD
EXTRN	CurrStruct:QWORD
EXTRN	StoreState:BYTE
EXTRN	__security_cookie:QWORD
pdata	SEGMENT
$pdata$AlignCurrOffset DD imagerel $LN4
	DD	imagerel $LN4+117
	DD	imagerel $unwind$AlignCurrOffset
$pdata$OrgDirective DD imagerel $LN18
	DD	imagerel $LN18+532
	DD	imagerel $unwind$OrgDirective
$pdata$fill_in_objfile_space DD imagerel fill_in_objfile_space
	DD	imagerel fill_in_objfile_space+459
	DD	imagerel $unwind$fill_in_objfile_space
$pdata$AlignDirective DD imagerel $LN38
	DD	imagerel $LN38+1124
	DD	imagerel $unwind$AlignDirective
pdata	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
_RTC_Shutdown.rtc$TMZ DQ FLAT:_RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
_RTC_InitBase.rtc$IMZ DQ FLAT:_RTC_InitBase
rtc$IMZ	ENDS
CONST	SEGMENT
OrgDirective$rtcName$0 DB 06fH
	DB	070H
	DB	06eH
	DB	064H
	DB	078H
	DB	00H
	ORG $+10
OrgDirective$rtcVarDesc DD 040H
	DD	068H
	DQ	FLAT:OrgDirective$rtcName$0
	ORG $+48
OrgDirective$rtcFrameData DD 01H
	DD	00H
	DQ	FLAT:OrgDirective$rtcVarDesc
AlignDirective$rtcName$0 DB 06fH
	DB	070H
	DB	06eH
	DB	064H
	DB	078H
	DB	00H
	ORG $+2
AlignDirective$rtcName$1 DB 062H
	DB	075H
	DB	066H
	DB	066H
	DB	065H
	DB	072H
	DB	00H
	ORG $+1
AlignDirective$rtcVarDesc DD 0d8H
	DD	020H
	DQ	FLAT:AlignDirective$rtcName$1
	DD	050H
	DD	068H
	DQ	FLAT:AlignDirective$rtcName$0
	ORG $+96
AlignDirective$rtcFrameData DD 02H
	DD	00H
	DQ	FLAT:AlignDirective$rtcVarDesc
CONST	ENDS
xdata	SEGMENT
$unwind$AlignCurrOffset DD 021c01H
	DD	070055209H
$unwind$OrgDirective DD 032701H
	DD	0180111H
	DD	0700aH
$unwind$fill_in_objfile_space DD 021c01H
	DD	070055209H
$unwind$AlignDirective DD 033919H
	DD	0240111H
	DD	0700aH
	DD	imagerel __GSHandlerCheck
	DD	0118H
xdata	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\posndir.c
_TEXT	SEGMENT
seg_align$ = 48
opndx$ = 80
CurrAddr$ = 196
buffer$ = 216
power$5 = 260
$T6 = 272
tv69 = 276
__$ArrayPad$ = 280
i$ = 304
tokenarray$ = 312
AlignDirective PROC

; 194  : {

$LN38:
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	push	rdi
	sub	rsp, 288				; 00000120H
	mov	rdi, rsp
	mov	ecx, 72					; 00000048H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, DWORD PTR [rsp+304]
	mov	rax, QWORD PTR __security_cookie
	xor	rax, rsp
	mov	QWORD PTR __$ArrayPad$[rsp], rax
	mov	BYTE PTR $T6[rsp], 0

; 195  :     int seg_align;
; 196  :     struct expr opndx;
; 197  :     uint_32 CurrAddr;
; 198  :     char buffer[32];
; 199  : 
; 200  :     DebugMsg1(("AlignDirective enter\n"));

	lea	rcx, OFFSET FLAT:$SG10716
	call	DoDebugMsg1

; 201  : 
; 202  :     switch( tokenarray[i].tokval ) {

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	eax, DWORD PTR [rcx+rax+16]
	mov	DWORD PTR tv69[rsp], eax
	cmp	DWORD PTR tv69[rsp], 434		; 000001b2H
	je	SHORT $LN7@AlignDirec
	cmp	DWORD PTR tv69[rsp], 435		; 000001b3H
	je	$LN16@AlignDirec
	jmp	$LN2@AlignDirec
$LN7@AlignDirec:

; 203  :     case T_ALIGN:
; 204  :         i++;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 205  :         if ( EvalOperand( &i, tokenarray, Token_Count, &opndx, EXPF_NOUNDEF ) == ERROR )

	mov	BYTE PTR $T6[rsp], 1
	mov	BYTE PTR [rsp+32], 2
	lea	r9, QWORD PTR opndx$[rsp]
	mov	r8d, DWORD PTR ModuleInfo+496
	mov	rdx, QWORD PTR tokenarray$[rsp]
	lea	rcx, QWORD PTR i$[rsp]
	call	EvalOperand
	cmp	eax, -1
	jne	SHORT $LN8@AlignDirec

; 206  :             return( ERROR );

	mov	eax, -1
	jmp	$LN1@AlignDirec
$LN8@AlignDirec:

; 207  :         if ( opndx.kind == EXPR_CONST ) {

	cmp	DWORD PTR opndx$[rsp+60], 0
	jne	$LN9@AlignDirec

; 208  :             int_32 power;
; 209  :             /* check that the parm is a power of 2 */
; 210  :             for( power = 1; power < align_value; power <<= 1 );

	mov	DWORD PTR power$5[rsp], 1
	jmp	SHORT $LN6@AlignDirec
$LN4@AlignDirec:
	mov	eax, DWORD PTR power$5[rsp]
	shl	eax, 1
	mov	DWORD PTR power$5[rsp], eax
$LN6@AlignDirec:
	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN29@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN29@AlignDirec:
	mov	eax, DWORD PTR opndx$[rsp]
	cmp	DWORD PTR power$5[rsp], eax
	jge	SHORT $LN5@AlignDirec
	jmp	SHORT $LN4@AlignDirec
$LN5@AlignDirec:

; 211  :             if( power != align_value ) {

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN30@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN30@AlignDirec:
	mov	eax, DWORD PTR opndx$[rsp]
	cmp	DWORD PTR power$5[rsp], eax
	je	SHORT $LN11@AlignDirec

; 212  :                 return( EmitErr( POWER_OF_2, align_value ) );

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN31@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN31@AlignDirec:
	mov	edx, DWORD PTR opndx$[rsp]
	mov	ecx, 129				; 00000081H
	call	EmitErr
	jmp	$LN1@AlignDirec
$LN11@AlignDirec:

; 213  :             }

	jmp	SHORT $LN10@AlignDirec
$LN9@AlignDirec:

; 214  :         } else if ( opndx.kind == EXPR_EMPTY ) { /* ALIGN without argument? */

	cmp	DWORD PTR opndx$[rsp+60], -2
	jne	SHORT $LN12@AlignDirec

; 215  :             /* v2.03: special STRUCT handling was missing */
; 216  :             if ( CurrStruct )

	cmp	QWORD PTR CurrStruct, 0
	je	SHORT $LN14@AlignDirec

; 217  :                 align_value = CurrStruct->e.structinfo->alignment;

	mov	rax, QWORD PTR CurrStruct
	mov	rax, QWORD PTR [rax+96]
	movzx	eax, BYTE PTR [rax+16]
	mov	BYTE PTR $T6[rsp], 1
	mov	DWORD PTR opndx$[rsp], eax
	jmp	SHORT $LN15@AlignDirec
$LN14@AlignDirec:

; 218  :             else
; 219  :                 align_value = GetCurrSegAlign();

	call	GetCurrSegAlign
	mov	BYTE PTR $T6[rsp], 1
	mov	DWORD PTR opndx$[rsp], eax
$LN15@AlignDirec:

; 220  :         } else {

	jmp	SHORT $LN13@AlignDirec
$LN12@AlignDirec:

; 221  :             return( EmitError( CONSTANT_EXPECTED ) );

	mov	ecx, 65					; 00000041H
	call	EmitError
	jmp	$LN1@AlignDirec
$LN13@AlignDirec:
$LN10@AlignDirec:

; 222  :         }
; 223  :         break;

	jmp	SHORT $LN2@AlignDirec
$LN16@AlignDirec:

; 224  :     case T_EVEN:
; 225  :         align_value = 2;

	mov	BYTE PTR $T6[rsp], 1
	mov	DWORD PTR opndx$[rsp], 2

; 226  :         i++;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN2@AlignDirec:

; 227  :         break;
; 228  :     }
; 229  :     if ( tokenarray[i].token != T_FINAL ) {

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	je	SHORT $LN17@AlignDirec

; 230  :         return( EmitErr( SYNTAX_ERROR_EX, tokenarray[i].string_ptr ) );

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rdx, QWORD PTR [rcx+rax+8]
	mov	ecx, 209				; 000000d1H
	call	EmitErr
	jmp	$LN1@AlignDirec
$LN17@AlignDirec:

; 231  :     }
; 232  : 
; 233  :     /* ALIGN/EVEN inside a STRUCT definition? */
; 234  :     if ( CurrStruct )

	cmp	QWORD PTR CurrStruct, 0
	je	SHORT $LN18@AlignDirec

; 235  :         return( AlignInStruct( align_value ));

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN32@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN32@AlignDirec:
	mov	ecx, DWORD PTR opndx$[rsp]
	call	AlignInStruct
	jmp	$LN1@AlignDirec
$LN18@AlignDirec:

; 236  : 
; 237  : #if FASTPASS
; 238  :     if ( StoreState == FALSE ) FStoreLine(0);

	movzx	eax, BYTE PTR StoreState
	test	eax, eax
	jne	SHORT $LN19@AlignDirec
	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN20@AlignDirec
	xor	r8d, r8d
	xor	edx, edx
	mov	rcx, QWORD PTR ModuleInfo+464
	call	StoreLine
$LN20@AlignDirec:
$LN19@AlignDirec:

; 239  : #endif
; 240  :     seg_align = GetCurrSegAlign(); /* # of bytes */

	call	GetCurrSegAlign
	mov	DWORD PTR seg_align$[rsp], eax

; 241  :     if( seg_align <= 0 ) {

	cmp	DWORD PTR seg_align$[rsp], 0
	jg	SHORT $LN22@AlignDirec

; 242  :         return( EmitError( MUST_BE_IN_SEGMENT_BLOCK ) );

	mov	ecx, 82					; 00000052H
	call	EmitError
	jmp	$LN1@AlignDirec
$LN22@AlignDirec:

; 243  :     }
; 244  :     if( align_value > seg_align ) {

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN33@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN33@AlignDirec:
	mov	eax, DWORD PTR seg_align$[rsp]
	cmp	DWORD PTR opndx$[rsp], eax
	jle	SHORT $LN23@AlignDirec

; 245  :         if (( Parse_Pass == PASS_1 )&&                   //We need 32 0r 64 bit for VEX and EVEX

	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN24@AlignDirec
	mov	rax, QWORD PTR ModuleInfo+440
	movzx	eax, BYTE PTR [rax+40]
	shr	al, 1
	and	al, 1
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN24@AlignDirec

; 246  :           (ModuleInfo.flat_grp->sym.isdefined == FALSE)) //No warning if "FLAT"
; 247  :             EmitWarn( 1, ALIGN_TOO_HIGH, myltoa( align_value, buffer, 10, FALSE, FALSE ) );

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN34@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN34@AlignDirec:
	mov	BYTE PTR [rsp+32], 0
	xor	r9d, r9d
	mov	r8d, 10
	lea	rdx, QWORD PTR buffer$[rsp]
	mov	ecx, DWORD PTR opndx$[rsp]
	call	myltoa
	mov	r8, rax
	mov	edx, 130				; 00000082H
	mov	ecx, 1
	call	EmitWarn
$LN24@AlignDirec:
$LN23@AlignDirec:

; 248  :         //return( ERROR ); /* v2.0: don't exit */
; 249  :     }
; 250  :     /* v2.04: added, Skip backpatching after ALIGN occured */
; 251  :     if ( Parse_Pass == PASS_1 && CurrSeg && CurrSeg->e.seginfo->FixupList.head )

	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN25@AlignDirec
	cmp	QWORD PTR ModuleInfo+432, 0
	je	SHORT $LN25@AlignDirec
	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	cmp	QWORD PTR [rax+40], 0
	je	SHORT $LN25@AlignDirec

; 252  :         CurrSeg->e.seginfo->FixupList.head->orgoccured = TRUE;

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	mov	rax, QWORD PTR [rax+40]
	movzx	eax, BYTE PTR [rax+33]
	or	al, 2
	mov	rcx, QWORD PTR ModuleInfo+432
	mov	rcx, QWORD PTR [rcx+96]
	mov	rcx, QWORD PTR [rcx+40]
	mov	BYTE PTR [rcx+33], al
$LN25@AlignDirec:

; 253  :     /* find out how many bytes past alignment we are & add the remainder */
; 254  :     /* store temp. value */
; 255  :     CurrAddr = GetCurrOffset();

	call	GetCurrOffset
	mov	DWORD PTR CurrAddr$[rsp], eax

; 256  :     seg_align = CurrAddr % align_value;

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN35@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN35@AlignDirec:
	xor	edx, edx
	mov	eax, DWORD PTR CurrAddr$[rsp]
	div	DWORD PTR opndx$[rsp]
	mov	eax, edx
	mov	DWORD PTR seg_align$[rsp], eax

; 257  :     if( seg_align ) {

	cmp	DWORD PTR seg_align$[rsp], 0
	je	SHORT $LN26@AlignDirec

; 258  :         align_value -= seg_align;

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN36@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN36@AlignDirec:
	mov	eax, DWORD PTR seg_align$[rsp]
	mov	ecx, DWORD PTR opndx$[rsp]
	sub	ecx, eax
	mov	eax, ecx
	mov	BYTE PTR $T6[rsp], 1
	mov	DWORD PTR opndx$[rsp], eax

; 259  :         fill_in_objfile_space( align_value );

	cmp	BYTE PTR $T6[rsp], 0
	jne	SHORT $LN37@AlignDirec
	lea	rcx, OFFSET FLAT:AlignDirective$rtcName$0
	call	_RTC_UninitUse
$LN37@AlignDirec:
	mov	ecx, DWORD PTR opndx$[rsp]
	call	fill_in_objfile_space
$LN26@AlignDirec:

; 260  :     }
; 261  :     if ( CurrFile[LST] ) {

	mov	eax, 8
	imul	rax, rax, 2
	lea	rcx, OFFSET FLAT:ModuleInfo+96
	cmp	QWORD PTR [rcx+rax], 0
	je	SHORT $LN27@AlignDirec

; 262  :         LstWrite( LSTTYPE_DATA, CurrAddr, NULL );

	xor	r8d, r8d
	mov	edx, DWORD PTR CurrAddr$[rsp]
	xor	ecx, ecx
	call	LstWrite
$LN27@AlignDirec:

; 263  :     }
; 264  :     DebugMsg1(("AlignDirective exit\n"));

	lea	rcx, OFFSET FLAT:$SG10738
	call	DoDebugMsg1

; 265  :     return( NOT_ERROR );

	xor	eax, eax
$LN1@AlignDirec:

; 266  : }

	mov	rdi, rax
	mov	rcx, rsp
	lea	rdx, OFFSET FLAT:AlignDirective$rtcFrameData
	call	_RTC_CheckStackVars
	mov	rax, rdi
	mov	rcx, QWORD PTR __$ArrayPad$[rsp]
	xor	rcx, rsp
	call	__security_check_cookie
	add	rsp, 288				; 00000120H
	pop	rdi
	ret	0
AlignDirective ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\posndir.c
_TEXT	SEGMENT
i$ = 32
nop_type$ = 36
size$ = 64
fill_in_objfile_space PROC

; 132  : {

	mov	DWORD PTR [rsp+8], ecx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, DWORD PTR [rsp+64]

; 133  :     int i;
; 134  :     int nop_type;
; 135  : 
; 136  :     /* emit
; 137  :      - nothing ... for BSS
; 138  :      - x'00'   ... for DATA
; 139  :      - nops    ... for CODE
; 140  :      */
; 141  : 
; 142  :     /* v2.04: no output if nothing has been written yet */
; 143  :     if( CurrSeg->e.seginfo->written == FALSE ) {

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	movzx	eax, BYTE PTR [rax+107]
	shr	al, 5
	and	al, 1
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN13@fill_in_ob

; 144  : 
; 145  :         SetCurrOffset( CurrSeg, size, TRUE, TRUE );

	mov	r9b, 1
	mov	r8b, 1
	mov	edx, DWORD PTR size$[rsp]
	mov	rcx, QWORD PTR ModuleInfo+432
	call	SetCurrOffset
	jmp	$LN14@fill_in_ob
$LN13@fill_in_ob:

; 146  : 
; 147  :     } else if( CurrSeg->e.seginfo->segtype != SEGTYPE_CODE ) {

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	cmp	DWORD PTR [rax+72], 1
	je	SHORT $LN15@fill_in_ob

; 148  : 
; 149  :         FillDataBytes( 0x00, size ); /* just output nulls */

	mov	edx, DWORD PTR size$[rsp]
	xor	ecx, ecx
	call	FillDataBytes

; 150  : 
; 151  :     } else {

	jmp	$LN16@fill_in_ob
$LN15@fill_in_ob:
$LN2@fill_in_ob:

; 152  :         /* output appropriate NOP type instructions to fill in the gap */
; 153  : 
; 154  :         while( size > NopLists[ ModuleInfo.Ofssize ][0] ) {

	movzx	eax, BYTE PTR ModuleInfo+404
	lea	rcx, OFFSET FLAT:NopLists
	mov	edx, 1
	imul	rdx, rdx, 0
	mov	rax, QWORD PTR [rcx+rax*8]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	DWORD PTR size$[rsp], eax
	jbe	$LN3@fill_in_ob

; 155  :             for( i = 1; i <= NopLists[ ModuleInfo.Ofssize ][0]; i++ ) {

	mov	DWORD PTR i$[rsp], 1
	jmp	SHORT $LN6@fill_in_ob
$LN4@fill_in_ob:
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN6@fill_in_ob:
	movzx	eax, BYTE PTR ModuleInfo+404
	lea	rcx, OFFSET FLAT:NopLists
	mov	edx, 1
	imul	rdx, rdx, 0
	mov	rax, QWORD PTR [rcx+rax*8]
	movzx	eax, BYTE PTR [rax+rdx]
	cmp	DWORD PTR i$[rsp], eax
	jg	SHORT $LN5@fill_in_ob

; 156  :                 OutputByte( NopLists[ ModuleInfo.Ofssize ][i] );

	movzx	eax, BYTE PTR ModuleInfo+404
	lea	rcx, OFFSET FLAT:NopLists
	movsxd	rdx, DWORD PTR i$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8]
	movzx	ecx, BYTE PTR [rax+rdx]
	call	OutputByte

; 157  :             }

	jmp	SHORT $LN4@fill_in_ob
$LN5@fill_in_ob:

; 158  :             size -= NopLists[ ModuleInfo.Ofssize ][0];

	movzx	eax, BYTE PTR ModuleInfo+404
	lea	rcx, OFFSET FLAT:NopLists
	mov	edx, 1
	imul	rdx, rdx, 0
	mov	rax, QWORD PTR [rcx+rax*8]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	ecx, DWORD PTR size$[rsp]
	sub	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR size$[rsp], eax

; 159  :         }

	jmp	$LN2@fill_in_ob
$LN3@fill_in_ob:

; 160  :         if( size == 0 ) return;

	cmp	DWORD PTR size$[rsp], 0
	jne	SHORT $LN17@fill_in_ob
	jmp	$LN1@fill_in_ob
$LN17@fill_in_ob:

; 161  : 
; 162  :         i=1; /* here i is the index into the NOP table */

	mov	DWORD PTR i$[rsp], 1

; 163  :         for( nop_type = NopLists[ ModuleInfo.Ofssize ][0]; nop_type > size ; nop_type-- ) {

	movzx	eax, BYTE PTR ModuleInfo+404
	lea	rcx, OFFSET FLAT:NopLists
	mov	edx, 1
	imul	rdx, rdx, 0
	mov	rax, QWORD PTR [rcx+rax*8]
	movzx	eax, BYTE PTR [rax+rdx]
	mov	DWORD PTR nop_type$[rsp], eax
	jmp	SHORT $LN9@fill_in_ob
$LN7@fill_in_ob:
	mov	eax, DWORD PTR nop_type$[rsp]
	dec	eax
	mov	DWORD PTR nop_type$[rsp], eax
$LN9@fill_in_ob:
	mov	eax, DWORD PTR size$[rsp]
	cmp	DWORD PTR nop_type$[rsp], eax
	jbe	SHORT $LN8@fill_in_ob

; 164  :             i+=nop_type;

	mov	eax, DWORD PTR nop_type$[rsp]
	mov	ecx, DWORD PTR i$[rsp]
	add	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR i$[rsp], eax

; 165  :         }

	jmp	SHORT $LN7@fill_in_ob
$LN8@fill_in_ob:

; 166  :         /* i now is the index of the 1st part of the NOP that we want */
; 167  :         for( ; nop_type > 0; nop_type--,i++ ) {

	jmp	SHORT $LN12@fill_in_ob
$LN10@fill_in_ob:
	mov	eax, DWORD PTR nop_type$[rsp]
	dec	eax
	mov	DWORD PTR nop_type$[rsp], eax
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN12@fill_in_ob:
	cmp	DWORD PTR nop_type$[rsp], 0
	jle	SHORT $LN11@fill_in_ob

; 168  :             OutputByte( NopLists[ ModuleInfo.Ofssize ][i] );

	movzx	eax, BYTE PTR ModuleInfo+404
	lea	rcx, OFFSET FLAT:NopLists
	movsxd	rdx, DWORD PTR i$[rsp]
	mov	rax, QWORD PTR [rcx+rax*8]
	movzx	ecx, BYTE PTR [rax+rdx]
	call	OutputByte

; 169  :         }

	jmp	SHORT $LN10@fill_in_ob
$LN11@fill_in_ob:
$LN16@fill_in_ob:
$LN14@fill_in_ob:
$LN1@fill_in_ob:

; 170  :     }
; 171  : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
fill_in_objfile_space ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\posndir.c
_TEXT	SEGMENT
opndx$ = 64
tv70 = 180
i$ = 208
tokenarray$ = 216
OrgDirective PROC

; 94   : {

$LN18:
	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	push	rdi
	sub	rsp, 192				; 000000c0H
	mov	rdi, rsp
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, DWORD PTR [rsp+208]

; 95   :     //struct asym  *sym;
; 96   :     //int_32       value = 0;
; 97   :     struct expr opndx;
; 98   : 
; 99   :     DebugMsg1(("OrgDirective(%u) enter\n", i));

	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG10656
	call	DoDebugMsg1

; 100  :     i++;

	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax

; 101  :     /* v2.09: if -Zne is set, don't allow forward reference in ORG argument */
; 102  :     //if ( ( ERROR == EvalOperand( &i, tokenarray, Token_Count, &opndx, 0 ) ) )
; 103  :     if ( ( ERROR == EvalOperand( &i, tokenarray, Token_Count, &opndx, Options.strict_masm_compat ? EXPF_NOUNDEF : 0 ) ) )

	movzx	eax, BYTE PTR Options+143
	test	eax, eax
	je	SHORT $LN16@OrgDirecti
	mov	DWORD PTR tv70[rsp], 2
	jmp	SHORT $LN17@OrgDirecti
$LN16@OrgDirecti:
	mov	DWORD PTR tv70[rsp], 0
$LN17@OrgDirecti:
	movzx	eax, BYTE PTR tv70[rsp]
	mov	BYTE PTR [rsp+32], al
	lea	r9, QWORD PTR opndx$[rsp]
	mov	r8d, DWORD PTR ModuleInfo+496
	mov	rdx, QWORD PTR tokenarray$[rsp]
	lea	rcx, QWORD PTR i$[rsp]
	call	EvalOperand
	cmp	eax, -1
	jne	SHORT $LN2@OrgDirecti

; 104  :         return( ERROR );

	mov	eax, -1
	jmp	$LN1@OrgDirecti
$LN2@OrgDirecti:

; 105  :     if ( tokenarray[i].token != T_FINAL ) {

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	movzx	eax, BYTE PTR [rcx+rax]
	test	eax, eax
	je	SHORT $LN3@OrgDirecti

; 106  :         return( EmitErr( SYNTAX_ERROR_EX, tokenarray[i].string_ptr ) );

	movsxd	rax, DWORD PTR i$[rsp]
	imul	rax, rax, 32				; 00000020H
	mov	rcx, QWORD PTR tokenarray$[rsp]
	mov	rdx, QWORD PTR [rcx+rax+8]
	mov	ecx, 209				; 000000d1H
	call	EmitErr
	jmp	$LN1@OrgDirecti
$LN3@OrgDirecti:

; 107  :     }
; 108  :     if ( CurrStruct ) {

	cmp	QWORD PTR CurrStruct, 0
	je	SHORT $LN4@OrgDirecti

; 109  :         if ( opndx.kind == EXPR_CONST )

	cmp	DWORD PTR opndx$[rsp+60], 0
	jne	SHORT $LN6@OrgDirecti

; 110  :             return( SetStructCurrentOffset( opndx.value ) );

	mov	ecx, DWORD PTR opndx$[rsp]
	call	SetStructCurrentOffset
	jmp	$LN1@OrgDirecti
$LN6@OrgDirecti:

; 111  :     } else {

	jmp	$LN5@OrgDirecti
$LN4@OrgDirecti:

; 112  :         if( CurrSeg == NULL ) {

	cmp	QWORD PTR ModuleInfo+432, 0
	jne	SHORT $LN7@OrgDirecti

; 113  :             return( EmitError( MUST_BE_IN_SEGMENT_BLOCK ) );

	mov	ecx, 82					; 00000052H
	call	EmitError
	jmp	$LN1@OrgDirecti
$LN7@OrgDirecti:

; 114  :         }
; 115  : #if FASTPASS
; 116  :         if ( StoreState == FALSE ) FStoreLine(0);

	movzx	eax, BYTE PTR StoreState
	test	eax, eax
	jne	SHORT $LN8@OrgDirecti
	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN9@OrgDirecti
	xor	r8d, r8d
	xor	edx, edx
	mov	rcx, QWORD PTR ModuleInfo+464
	call	StoreLine
$LN9@OrgDirecti:
$LN8@OrgDirecti:

; 117  : #endif
; 118  :         /* v2.04: added */
; 119  :         if ( Parse_Pass == PASS_1 && CurrSeg->e.seginfo->FixupList.head )

	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN11@OrgDirecti
	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	cmp	QWORD PTR [rax+40], 0
	je	SHORT $LN11@OrgDirecti

; 120  :             CurrSeg->e.seginfo->FixupList.head->orgoccured = TRUE;

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	mov	rax, QWORD PTR [rax+40]
	movzx	eax, BYTE PTR [rax+33]
	or	al, 2
	mov	rcx, QWORD PTR ModuleInfo+432
	mov	rcx, QWORD PTR [rcx+96]
	mov	rcx, QWORD PTR [rcx+40]
	mov	BYTE PTR [rcx+33], al
$LN11@OrgDirecti:

; 121  : 
; 122  :         if ( opndx.kind == EXPR_CONST )

	cmp	DWORD PTR opndx$[rsp+60], 0
	jne	SHORT $LN12@OrgDirecti

; 123  :             return( SetCurrOffset( CurrSeg, opndx.value, FALSE, FALSE ) );

	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, DWORD PTR opndx$[rsp]
	mov	rcx, QWORD PTR ModuleInfo+432
	call	SetCurrOffset
	jmp	SHORT $LN1@OrgDirecti
	jmp	SHORT $LN13@OrgDirecti
$LN12@OrgDirecti:

; 124  :         else if ( opndx.kind == EXPR_ADDR && opndx.indirect == FALSE )

	cmp	DWORD PTR opndx$[rsp+60], 1
	jne	SHORT $LN14@OrgDirecti
	mov	eax, DWORD PTR opndx$[rsp+76]
	and	eax, 1
	test	eax, eax
	jne	SHORT $LN14@OrgDirecti

; 125  :             return( SetCurrOffset( CurrSeg, opndx.sym->offset + opndx.value, FALSE, FALSE ) );

	mov	rax, QWORD PTR opndx$[rsp+80]
	mov	eax, DWORD PTR [rax+16]
	add	eax, DWORD PTR opndx$[rsp]
	xor	r9d, r9d
	xor	r8d, r8d
	mov	edx, eax
	mov	rcx, QWORD PTR ModuleInfo+432
	call	SetCurrOffset
	jmp	SHORT $LN1@OrgDirecti
$LN14@OrgDirecti:
$LN13@OrgDirecti:
$LN5@OrgDirecti:

; 126  :     }
; 127  :     return( EmitError( ORG_NEEDS_A_CONSTANT_OR_LOCAL_OFFSET ) );

	mov	ecx, 40					; 00000028H
	call	EmitError
$LN1@OrgDirecti:

; 128  : }

	mov	rdi, rax
	mov	rcx, rsp
	lea	rdx, OFFSET FLAT:OrgDirective$rtcFrameData
	call	_RTC_CheckStackVars
	mov	rax, rdi
	add	rsp, 192				; 000000c0H
	pop	rdi
	ret	0
OrgDirective ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\posndir.c
_TEXT	SEGMENT
seg_align$ = 32
alignment$ = 36
CurrAddr$ = 40
tv77 = 44
value$ = 64
AlignCurrOffset PROC

; 177  : {

$LN4:
	mov	DWORD PTR [rsp+8], ecx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, DWORD PTR [rsp+64]

; 178  :     int seg_align;
; 179  :     int alignment = (1 << value);

	mov	eax, DWORD PTR value$[rsp]
	mov	ecx, 1
	mov	DWORD PTR tv77[rsp], ecx
	movzx	ecx, al
	mov	eax, DWORD PTR tv77[rsp]
	shl	eax, cl
	mov	DWORD PTR alignment$[rsp], eax

; 180  :     unsigned int CurrAddr;
; 181  : 
; 182  :     CurrAddr = GetCurrOffset();

	call	GetCurrOffset
	mov	DWORD PTR CurrAddr$[rsp], eax

; 183  :     seg_align = CurrAddr % alignment;

	xor	edx, edx
	mov	eax, DWORD PTR CurrAddr$[rsp]
	div	DWORD PTR alignment$[rsp]
	mov	eax, edx
	mov	DWORD PTR seg_align$[rsp], eax

; 184  :     if( seg_align ) {

	cmp	DWORD PTR seg_align$[rsp], 0
	je	SHORT $LN2@AlignCurrO

; 185  :         alignment -= seg_align;

	mov	eax, DWORD PTR seg_align$[rsp]
	mov	ecx, DWORD PTR alignment$[rsp]
	sub	ecx, eax
	mov	eax, ecx
	mov	DWORD PTR alignment$[rsp], eax

; 186  :         fill_in_objfile_space( alignment );

	mov	ecx, DWORD PTR alignment$[rsp]
	call	fill_in_objfile_space
$LN2@AlignCurrO:

; 187  :     }
; 188  : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
AlignCurrOffset ENDP
_TEXT	ENDS
END
