; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
COMM	Frame_Type:BYTE
COMM	Frame_Datum:WORD
_DATA	ENDS
_BSS	SEGMENT
?cnt@?1??CreateFixup@@9@9 DD 01H DUP (?)		; `CreateFixup'::`2'::cnt
_BSS	ENDS
_DATA	SEGMENT
$SG10543 DB	'NULL', 00H
	ORG $+3
$SG10544 DB	'CreateFixup(sym=%s type=%u, opt=%u) cnt=%X, loc=%Xh', 0aH
	DB	00H
	ORG $+3
$SG10579 DB	'SetFixupFrame(%s): unexpected state=%u', 0aH, 00H
$SG10580 DB	'fixup.c', 00H
$SG10592 DB	'store_fixup: type=%u, loc=%s.%X, target=%s(%X+% X)', 0aH
	DB	00H
	ORG $+4
$SG10593 DB	'store_fixup: type=%u, loc=%s.%X, target=%X', 0aH, 00H
_DATA	ENDS
PUBLIC	CreateFixup
PUBLIC	SetFixupFrame
PUBLIC	FreeFixup
PUBLIC	store_fixup
EXTRN	DoDebugMsg:PROC
EXTRN	DoDebugMsg1:PROC
EXTRN	LclAlloc:PROC
EXTRN	GetCurrOffset:PROC
EXTRN	GetSegIdx:PROC
EXTRN	GetGroup:PROC
EXTRN	InternalError:PROC
EXTRN	_RTC_InitBase:PROC
EXTRN	_RTC_Shutdown:PROC
EXTRN	Options:BYTE
EXTRN	ModuleInfo:BYTE
EXTRN	Parse_Pass:DWORD
EXTRN	__ImageBase:BYTE
pdata	SEGMENT
$pdata$CreateFixup DD imagerel $LN10
	DD	imagerel $LN10+409
	DD	imagerel $unwind$CreateFixup
$pdata$SetFixupFrame DD imagerel $LN15
	DD	imagerel $LN15+336
	DD	imagerel $unwind$SetFixupFrame
$pdata$FreeFixup DD imagerel $LN11
	DD	imagerel $LN11+190
	DD	imagerel $unwind$FreeFixup
$pdata$store_fixup DD imagerel $LN19
	DD	imagerel $LN19+591
	DD	imagerel $unwind$store_fixup
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
$unwind$CreateFixup DD 022701H
	DD	0700f7213H
$unwind$SetFixupFrame DD 022201H
	DD	0700a520eH
$unwind$FreeFixup DD 021e01H
	DD	07006120aH
$unwind$store_fixup DD 022801H
	DD	070107214H
xdata	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\fixup.c
_TEXT	SEGMENT
fixup$ = 80
seg$ = 88
pdata$ = 96
store_fixup PROC

; 196  : {

$LN19:
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 64					; 00000040H
	mov	rdi, rsp
	mov	ecx, 16
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+80]

; 197  :     //struct fixup     *fixup;
; 198  : 
; 199  :     //fixup = CodeInfo->InsFixup[index];
; 200  : 
; 201  :     //CodeInfo->data[index] = CodeInfo->data[index] - fixup->sym->offset;
; 202  :     //fixup->offset = CodeInfo->data[index];
; 203  :     fixup->offset = *pdata;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rcx, QWORD PTR pdata$[rsp]
	mov	ecx, DWORD PTR [rcx]
	mov	DWORD PTR [rax+16], ecx

; 204  : 
; 205  : #ifdef DEBUG_OUT
; 206  :     if ( fixup->sym )

	mov	rax, QWORD PTR fixup$[rsp]
	cmp	QWORD PTR [rax+56], 0
	je	SHORT $LN2@store_fixu

; 207  :         DebugMsg1(("store_fixup: type=%u, loc=%s.%" I32_SPEC "X, target=%s(%" I32_SPEC "X+% " I32_SPEC "X)\n",

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+56]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	rcx, QWORD PTR [rcx+56]
	mov	rdx, QWORD PTR fixup$[rsp]
	mov	edx, DWORD PTR [rdx+16]
	mov	DWORD PTR [rsp+48], edx
	mov	eax, DWORD PTR [rax+16]
	mov	DWORD PTR [rsp+40], eax
	mov	rax, QWORD PTR [rcx+8]
	mov	QWORD PTR [rsp+32], rax
	mov	rax, QWORD PTR fixup$[rsp]
	mov	r9d, DWORD PTR [rax+20]
	mov	rax, QWORD PTR seg$[rsp]
	mov	r8, QWORD PTR [rax+8]
	mov	rax, QWORD PTR fixup$[rsp]
	mov	edx, DWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG10592
	call	DoDebugMsg1
	jmp	SHORT $LN3@store_fixu
$LN2@store_fixu:

; 208  :                 fixup->type, seg->sym.name, fixup->locofs, fixup->sym->name, fixup->sym->offset, fixup->offset ));
; 209  :     else
; 210  :         DebugMsg1(("store_fixup: type=%u, loc=%s.%" I32_SPEC "X, target=%" I32_SPEC "X\n",

	mov	rax, QWORD PTR fixup$[rsp]
	mov	eax, DWORD PTR [rax+16]
	mov	DWORD PTR [rsp+32], eax
	mov	rax, QWORD PTR fixup$[rsp]
	mov	r9d, DWORD PTR [rax+20]
	mov	rax, QWORD PTR seg$[rsp]
	mov	r8, QWORD PTR [rax+8]
	mov	rax, QWORD PTR fixup$[rsp]
	mov	edx, DWORD PTR [rax+24]
	lea	rcx, OFFSET FLAT:$SG10593
	call	DoDebugMsg1
$LN3@store_fixu:

; 211  :                 fixup->type, seg->sym.name, fixup->locofs, fixup->offset));
; 212  : #endif
; 213  : 
; 214  :     fixup->nextrlc = NULL;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	QWORD PTR [rax+8], 0

; 215  : #if 0
; 216  :     /* v2.07: no error checks here! store_fixup() is called only if pass > 1
; 217  :      * and as long as write_to_file is true! This check is now done in
; 218  :      * codegen() and data_item().
; 219  :      */
; 220  :     if ( ( 1 << fixup->type ) & ModuleInfo.fmtopt->invalid_fixup_type ) {
; 221  :         EmitErr( UNSUPPORTED_FIXUP_TYPE,
; 222  :                ModuleInfo.fmtopt->formatname,
; 223  :                fixup->sym ? fixup->sym->name : szNull );
; 224  :         return( ERROR );
; 225  :     }
; 226  : #endif
; 227  :     if ( Options.output_format == OFORMAT_OMF ) {

	cmp	DWORD PTR Options+160, 1
	jne	SHORT $LN4@store_fixu

; 228  : 
; 229  :         /* for OMF, the target's offset is stored at the fixup's location. */
; 230  :         if( fixup->type != FIX_SEG && fixup->sym ) {

	mov	rax, QWORD PTR fixup$[rsp]
	cmp	DWORD PTR [rax+24], 8
	je	SHORT $LN6@store_fixu
	mov	rax, QWORD PTR fixup$[rsp]
	cmp	QWORD PTR [rax+56], 0
	je	SHORT $LN6@store_fixu

; 231  :             *pdata += fixup->sym->offset;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+56]
	mov	rcx, QWORD PTR pdata$[rsp]
	mov	ecx, DWORD PTR [rcx]
	add	ecx, DWORD PTR [rax+16]
	mov	eax, ecx
	mov	rcx, QWORD PTR pdata$[rsp]
	mov	DWORD PTR [rcx], eax
$LN6@store_fixu:

; 232  :         }
; 233  : 
; 234  :     } else {

	jmp	$LN5@store_fixu
$LN4@store_fixu:

; 235  : 
; 236  : #if ELF_SUPPORT
; 237  :         if ( Options.output_format == OFORMAT_ELF ) {

	cmp	DWORD PTR Options+160, 3
	jne	SHORT $LN7@store_fixu

; 238  :             /* v2.07: inline addend for ELF32 only.
; 239  :              * Also, in 64-bit, pdata may be a int_64 pointer (FIX_OFF64)!
; 240  :              */
; 241  : #if AMD64_SUPPORT
; 242  :             if ( ModuleInfo.defOfssize == USE64 ) {

	movzx	eax, BYTE PTR ModuleInfo+405
	cmp	eax, 2
	jne	SHORT $LN8@store_fixu

; 243  : #if 0
; 244  :                 /* this won't work currently because fixup.offset may have to
; 245  :                  * save *(int_64) pdata, but it is 32-bit only!
; 246  :                  */
; 247  :                 if ( fixup->type == FIX_OFF64 )
; 248  :                     *(int_64 *)pdata = 0;
; 249  :                 else
; 250  :                     *pdata = 0;
; 251  : #endif
; 252  :             } else

	jmp	SHORT $LN9@store_fixu
$LN8@store_fixu:

; 253  : #endif
; 254  :             if ( fixup->type == FIX_RELOFF32 )

	mov	rax, QWORD PTR fixup$[rsp]
	cmp	DWORD PTR [rax+24], 3
	jne	SHORT $LN10@store_fixu

; 255  :                 *pdata = -4;

	mov	rax, QWORD PTR pdata$[rsp]
	mov	DWORD PTR [rax], -4
	jmp	SHORT $LN11@store_fixu
$LN10@store_fixu:

; 256  : #if GNURELOCS /* v2.04: added */
; 257  :             else if ( fixup->type == FIX_RELOFF16 )

	mov	rax, QWORD PTR fixup$[rsp]
	cmp	DWORD PTR [rax+24], 2
	jne	SHORT $LN12@store_fixu

; 258  :                 *pdata = -2;

	mov	rax, QWORD PTR pdata$[rsp]
	mov	DWORD PTR [rax], -2
	jmp	SHORT $LN13@store_fixu
$LN12@store_fixu:

; 259  :             else if ( fixup->type == FIX_RELOFF8 )

	mov	rax, QWORD PTR fixup$[rsp]
	cmp	DWORD PTR [rax+24], 1
	jne	SHORT $LN14@store_fixu

; 260  :                 *pdata = -1;

	mov	rax, QWORD PTR pdata$[rsp]
	mov	DWORD PTR [rax], -1
$LN14@store_fixu:
$LN13@store_fixu:
$LN11@store_fixu:
$LN9@store_fixu:
$LN7@store_fixu:

; 261  : #endif
; 262  :         }
; 263  : #endif
; 264  : #if DJGPP_SUPPORT
; 265  :         /* Djgpp's COFF variant needs special handling for
; 266  :          * - at least - relative and direct 32-bit offsets.
; 267  :          */
; 268  :         if ( fixup->sym && ModuleInfo.sub_format == SFORMAT_DJGPP ) {
; 269  :             if ( fixup->type == FIX_RELOFF32 ) { /* probably also for 16-bit */
; 270  :                 *pdata -= ( fixup->locofs + 4 );
; 271  :             } else if ( fixup->type == FIX_OFF32 ) {
; 272  :                 *pdata += fixup->sym->offset;
; 273  :                 fixup->offset += fixup->sym->offset; /* ok? */
; 274  :                 fixup->segment = fixup->sym->segment;/* ok? */
; 275  :             }
; 276  :         } else
; 277  : #endif
; 278  :         /* special handling for assembly time variables needed */
; 279  :         if ( fixup->sym && fixup->sym->variable ) {

	mov	rax, QWORD PTR fixup$[rsp]
	cmp	QWORD PTR [rax+56], 0
	je	SHORT $LN15@store_fixu
	mov	rax, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+56]
	movzx	eax, BYTE PTR [rax+40]
	shr	al, 6
	and	al, 1
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN15@store_fixu

; 280  :             /* add symbol's offset to the fixup location and fixup's offset */
; 281  :             *pdata += fixup->sym->offset;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+56]
	mov	rcx, QWORD PTR pdata$[rsp]
	mov	ecx, DWORD PTR [rcx]
	add	ecx, DWORD PTR [rax+16]
	mov	eax, ecx
	mov	rcx, QWORD PTR pdata$[rsp]
	mov	DWORD PTR [rcx], eax

; 282  :             fixup->offset         += fixup->sym->offset;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+56]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	ecx, DWORD PTR [rcx+16]
	add	ecx, DWORD PTR [rax+16]
	mov	eax, ecx
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	DWORD PTR [rcx+16], eax

; 283  :             /* and save symbol's segment in fixup */
; 284  :             fixup->segment_var = fixup->sym->segment;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+56]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+24]
	mov	QWORD PTR [rcx+40], rax
$LN15@store_fixu:
$LN5@store_fixu:

; 285  :         }
; 286  : #if 0   /* fixup without symbol: this is to be resolved internally! */
; 287  :         else if ( fixup->sym == NULL && fixup->frame == EMPTY ) {
; 288  :             DebugMsg(("store_fixup: fixup skipped, symbol=0, no frame\n" ));
; 289  :             return( NOT_ERROR );
; 290  :         }
; 291  : #endif
; 292  :     }
; 293  :     if( seg->e.seginfo->FixupList.head == NULL ) {

	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+96]
	cmp	QWORD PTR [rax+40], 0
	jne	SHORT $LN16@store_fixu

; 294  :         seg->e.seginfo->FixupList.tail = seg->e.seginfo->FixupList.head = fixup;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	QWORD PTR [rax+40], rcx
	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	QWORD PTR [rax+48], rcx

; 295  :     } else {

	jmp	SHORT $LN17@store_fixu
$LN16@store_fixu:

; 296  :         seg->e.seginfo->FixupList.tail->nextrlc = fixup;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	rax, QWORD PTR [rax+48]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	QWORD PTR [rax+8], rcx

; 297  :         seg->e.seginfo->FixupList.tail = fixup;

	mov	rax, QWORD PTR seg$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	QWORD PTR [rax+48], rcx
$LN17@store_fixu:

; 298  :     }
; 299  :     return;
; 300  : }

	add	rsp, 64					; 00000040H
	pop	rdi
	ret	0
store_fixup ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\fixup.c
_TEXT	SEGMENT
dir$ = 0
fixup2$ = 8
fixup$ = 32
FreeFixup PROC

; 119  : {

$LN11:
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 16
	mov	rdi, rsp
	mov	ecx, 4
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+32]

; 120  :     struct dsym *dir;
; 121  :     struct fixup *fixup2;
; 122  : 
; 123  :     if ( Parse_Pass == PASS_1 ) {

	cmp	DWORD PTR Parse_Pass, 0
	jne	$LN5@FreeFixup

; 124  :         dir = fixup->def_seg;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+48]
	mov	QWORD PTR dir$[rsp], rax

; 125  :         if ( dir ) {

	cmp	QWORD PTR dir$[rsp], 0
	je	SHORT $LN6@FreeFixup

; 126  :             if ( fixup == dir->e.seginfo->FixupList.head ) {

	mov	rax, QWORD PTR dir$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	rax, QWORD PTR [rax+40]
	cmp	QWORD PTR fixup$[rsp], rax
	jne	SHORT $LN7@FreeFixup

; 127  :                 dir->e.seginfo->FixupList.head = fixup->nextrlc;

	mov	rax, QWORD PTR dir$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	QWORD PTR [rax+40], rcx

; 128  :             } else {

	jmp	SHORT $LN8@FreeFixup
$LN7@FreeFixup:

; 129  :                 for ( fixup2 = dir->e.seginfo->FixupList.head; fixup2; fixup2 = fixup2->nextrlc ) {

	mov	rax, QWORD PTR dir$[rsp]
	mov	rax, QWORD PTR [rax+96]
	mov	rax, QWORD PTR [rax+40]
	mov	QWORD PTR fixup2$[rsp], rax
	jmp	SHORT $LN4@FreeFixup
$LN2@FreeFixup:
	mov	rax, QWORD PTR fixup2$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR fixup2$[rsp], rax
$LN4@FreeFixup:
	cmp	QWORD PTR fixup2$[rsp], 0
	je	SHORT $LN3@FreeFixup

; 130  :                     if ( fixup2->nextrlc == fixup ) {

	mov	rax, QWORD PTR fixup2$[rsp]
	mov	rcx, QWORD PTR fixup$[rsp]
	cmp	QWORD PTR [rax+8], rcx
	jne	SHORT $LN9@FreeFixup

; 131  :                         fixup2->nextrlc = fixup->nextrlc;

	mov	rax, QWORD PTR fixup2$[rsp]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	rcx, QWORD PTR [rcx+8]
	mov	QWORD PTR [rax+8], rcx

; 132  :                         break;

	jmp	SHORT $LN3@FreeFixup
$LN9@FreeFixup:

; 133  :                     }
; 134  :                 }

	jmp	SHORT $LN2@FreeFixup
$LN3@FreeFixup:
$LN8@FreeFixup:
$LN6@FreeFixup:
$LN5@FreeFixup:

; 135  :             }
; 136  :         }
; 137  :     }
; 138  :     LclFree( fixup );
; 139  : }

	add	rsp, 16
	pop	rdi
	ret	0
FreeFixup ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\fixup.c
_TEXT	SEGMENT
grp$ = 32
tv66 = 40
sym$ = 64
ign_grp$ = 72
SetFixupFrame PROC

; 150  : {

$LN15:
	mov	BYTE PTR [rsp+16], dl
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+64]

; 151  :     struct dsym *grp;
; 152  : 
; 153  :     if( sym ) {

	cmp	QWORD PTR sym$[rsp], 0
	je	$LN4@SetFixupFr

; 154  :         switch ( sym->state ) {

	mov	rax, QWORD PTR sym$[rsp]
	mov	eax, DWORD PTR [rax+32]
	mov	DWORD PTR tv66[rsp], eax
	cmp	DWORD PTR tv66[rsp], 5
	ja	$LN12@SetFixupFr
	movsxd	rax, DWORD PTR tv66[rsp]
	lea	rcx, OFFSET FLAT:__ImageBase
	mov	eax, DWORD PTR $LN14@SetFixupFr[rcx+rax*4]
	add	rax, rcx
	jmp	rax
$LN5@SetFixupFr:

; 155  :         case SYM_INTERNAL:
; 156  :         case SYM_EXTERNAL:
; 157  :             if( sym->segment != NULL ) {

	mov	rax, QWORD PTR sym$[rsp]
	cmp	QWORD PTR [rax+24], 0
	je	SHORT $LN6@SetFixupFr

; 158  :                 if( ign_grp == FALSE && ( grp = (struct dsym *)GetGroup( sym ) ) ) {

	movsx	eax, BYTE PTR ign_grp$[rsp]
	test	eax, eax
	jne	SHORT $LN7@SetFixupFr
	mov	rcx, QWORD PTR sym$[rsp]
	call	GetGroup
	mov	QWORD PTR grp$[rsp], rax
	cmp	QWORD PTR grp$[rsp], 0
	je	SHORT $LN7@SetFixupFr

; 159  :                     Frame_Type = FRAME_GRP;

	mov	BYTE PTR Frame_Type, 1

; 160  :                     Frame_Datum = grp->e.grpinfo->grp_idx;

	mov	rax, QWORD PTR grp$[rsp]
	mov	rax, QWORD PTR [rax+96]
	movzx	eax, WORD PTR [rax+8]
	mov	WORD PTR Frame_Datum, ax

; 161  :                 } else {

	jmp	SHORT $LN8@SetFixupFr
$LN7@SetFixupFr:

; 162  :                     Frame_Type = FRAME_SEG;

	mov	BYTE PTR Frame_Type, 0

; 163  :                     Frame_Datum = GetSegIdx( sym->segment );

	mov	rax, QWORD PTR sym$[rsp]
	mov	rcx, QWORD PTR [rax+24]
	call	GetSegIdx
	mov	WORD PTR Frame_Datum, ax
$LN8@SetFixupFr:
$LN6@SetFixupFr:

; 164  :                 }
; 165  :             }
; 166  :             break;

	jmp	SHORT $LN2@SetFixupFr
$LN9@SetFixupFr:

; 167  :         case SYM_SEG:
; 168  :             Frame_Type = FRAME_SEG;

	mov	BYTE PTR Frame_Type, 0

; 169  :             Frame_Datum = GetSegIdx( sym->segment );

	mov	rax, QWORD PTR sym$[rsp]
	mov	rcx, QWORD PTR [rax+24]
	call	GetSegIdx
	mov	WORD PTR Frame_Datum, ax

; 170  :             break;

	jmp	SHORT $LN2@SetFixupFr
$LN10@SetFixupFr:

; 171  :         case SYM_GRP:
; 172  :             Frame_Type = FRAME_GRP;

	mov	BYTE PTR Frame_Type, 1

; 173  :             Frame_Datum = ((struct dsym *)sym)->e.grpinfo->grp_idx;

	mov	rax, QWORD PTR sym$[rsp]
	mov	rax, QWORD PTR [rax+96]
	movzx	eax, WORD PTR [rax+8]
	mov	WORD PTR Frame_Datum, ax

; 174  :             break;

	jmp	SHORT $LN2@SetFixupFr
$LN11@SetFixupFr:

; 175  : #ifdef DEBUG_OUT
; 176  :         case SYM_UNDEFINED:
; 177  :         case SYM_STACK:
; 178  :             break;

	jmp	SHORT $LN2@SetFixupFr
$LN12@SetFixupFr:

; 179  :         default:
; 180  :             DebugMsg(("SetFixupFrame(%s): unexpected state=%u\n", sym->name, sym->state ));

	mov	rax, QWORD PTR sym$[rsp]
	mov	r8d, DWORD PTR [rax+32]
	mov	rax, QWORD PTR sym$[rsp]
	mov	rdx, QWORD PTR [rax+8]
	lea	rcx, OFFSET FLAT:$SG10579
	call	DoDebugMsg

; 181  :             /**/myassert( 0 );

	mov	edx, 181				; 000000b5H
	lea	rcx, OFFSET FLAT:$SG10580
	call	InternalError
$LN2@SetFixupFr:
$LN4@SetFixupFr:

; 182  :             break;
; 183  : #endif
; 184  :         }
; 185  :     }
; 186  : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
	npad	2
$LN14@SetFixupFr:
	DD	$LN11@SetFixupFr
	DD	$LN5@SetFixupFr
	DD	$LN5@SetFixupFr
	DD	$LN9@SetFixupFr
	DD	$LN10@SetFixupFr
	DD	$LN11@SetFixupFr
SetFixupFrame ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\fixup.c
_TEXT	SEGMENT
fixup$ = 48
tv131 = 56
sym$ = 80
type$ = 88
option$ = 96
CreateFixup PROC

; 61   : {

$LN10:
	mov	DWORD PTR [rsp+24], r8d
	mov	DWORD PTR [rsp+16], edx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 64					; 00000040H
	mov	rdi, rsp
	mov	ecx, 16
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+80]

; 62   : #ifdef DEBUG_OUT
; 63   :     static uint_32 cnt = 0;
; 64   : #endif
; 65   :     struct fixup     *fixup;
; 66   : 
; 67   :     fixup = LclAlloc( sizeof( struct fixup ) );

	mov	ecx, 64					; 00000040H
	call	LclAlloc
	mov	QWORD PTR fixup$[rsp], rax

; 68   : #ifdef TRMEM
; 69   :     fixup->marker = 'XF';
; 70   :     DebugMsg1(("CreateFixup, pass=%u: fix=%p sym=%s\n", Parse_Pass+1, fixup, sym ? sym->name : "NULL" ));
; 71   : #endif
; 72   : 
; 73   :     /* add the fixup to the symbol's linked list (used for backpatch)
; 74   :      * this is done for pass 1 only.
; 75   :      */
; 76   :     if ( Parse_Pass == PASS_1 ) {

	cmp	DWORD PTR Parse_Pass, 0
	jne	SHORT $LN2@CreateFixu

; 77   : #ifdef DEBUG_OUT
; 78   :         if ( Options.nobackpatch == FALSE )

	movzx	eax, BYTE PTR Options+16
	test	eax, eax
	jne	SHORT $LN3@CreateFixu

; 79   : #endif
; 80   :         if ( sym ) { /* changed v1.96 */

	cmp	QWORD PTR sym$[rsp], 0
	je	SHORT $LN4@CreateFixu

; 81   :             fixup->nextbp = sym->bp_fixup;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rcx, QWORD PTR sym$[rsp]
	mov	rcx, QWORD PTR [rcx+88]
	mov	QWORD PTR [rax], rcx

; 82   :             sym->bp_fixup = fixup;

	mov	rax, QWORD PTR sym$[rsp]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	QWORD PTR [rax+88], rcx
$LN4@CreateFixu:
$LN3@CreateFixu:

; 83   :         }
; 84   :         /* v2.03: in pass one, create a linked list of
; 85   :          * fixup locations for a segment. This is to improve
; 86   :          * backpatching, because it allows to adjust fixup locations
; 87   :          * after a distance has changed from short to near
; 88   :          */
; 89   : #ifdef DEBUG_OUT
; 90   :         if ( Options.nobackpatch == FALSE )

	movzx	eax, BYTE PTR Options+16
	test	eax, eax
	jne	SHORT $LN5@CreateFixu

; 91   : #endif
; 92   :         if ( CurrSeg ) {

	cmp	QWORD PTR ModuleInfo+432, 0
	je	SHORT $LN6@CreateFixu

; 93   :             fixup->nextrlc = CurrSeg->e.seginfo->FixupList.head;

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	rax, QWORD PTR [rax+40]
	mov	QWORD PTR [rcx+8], rax

; 94   :             CurrSeg->e.seginfo->FixupList.head = fixup;

	mov	rax, QWORD PTR ModuleInfo+432
	mov	rax, QWORD PTR [rax+96]
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	QWORD PTR [rax+40], rcx
$LN6@CreateFixu:
$LN5@CreateFixu:
$LN2@CreateFixu:

; 95   :         }
; 96   :     }
; 97   :     /* initialize locofs member with current offset.
; 98   :      * It's unlikely to be the final location, but sufficiently exact for backpatching.
; 99   :      */
; 100  :     fixup->locofs = GetCurrOffset();

	call	GetCurrOffset
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	DWORD PTR [rcx+20], eax

; 101  :     fixup->offset = 0;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	DWORD PTR [rax+16], 0

; 102  :     fixup->type = type;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	ecx, DWORD PTR type$[rsp]
	mov	DWORD PTR [rax+24], ecx

; 103  :     fixup->option = option;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	ecx, DWORD PTR option$[rsp]
	mov	DWORD PTR [rax+28], ecx

; 104  :     fixup->flags = 0;

	xor	eax, eax
	mov	rcx, QWORD PTR fixup$[rsp]
	mov	WORD PTR [rcx+32], ax

; 105  :     fixup->frame_type = Frame_Type;     /* this is just a guess */

	mov	rax, QWORD PTR fixup$[rsp]
	movzx	ecx, BYTE PTR Frame_Type
	mov	BYTE PTR [rax+40], cl

; 106  :     fixup->frame_datum = Frame_Datum;

	mov	rax, QWORD PTR fixup$[rsp]
	movzx	ecx, WORD PTR Frame_Datum
	mov	WORD PTR [rax+42], cx

; 107  :     fixup->def_seg = CurrSeg;           /* may be NULL (END directive) */

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rcx, QWORD PTR ModuleInfo+432
	mov	QWORD PTR [rax+48], rcx

; 108  :     fixup->sym = sym;

	mov	rax, QWORD PTR fixup$[rsp]
	mov	rcx, QWORD PTR sym$[rsp]
	mov	QWORD PTR [rax+56], rcx

; 109  : 
; 110  :     DebugMsg1(("CreateFixup(sym=%s type=%u, opt=%u) cnt=%" I32_SPEC "X, loc=%" I32_SPEC "Xh\n",

	cmp	QWORD PTR sym$[rsp], 0
	je	SHORT $LN8@CreateFixu
	mov	rax, QWORD PTR sym$[rsp]
	mov	rax, QWORD PTR [rax+8]
	mov	QWORD PTR tv131[rsp], rax
	jmp	SHORT $LN9@CreateFixu
$LN8@CreateFixu:
	lea	rax, OFFSET FLAT:$SG10543
	mov	QWORD PTR tv131[rsp], rax
$LN9@CreateFixu:
	mov	eax, DWORD PTR ?cnt@?1??CreateFixup@@9@9
	inc	eax
	mov	DWORD PTR ?cnt@?1??CreateFixup@@9@9, eax
	mov	rax, QWORD PTR fixup$[rsp]
	mov	eax, DWORD PTR [rax+20]
	mov	DWORD PTR [rsp+40], eax
	mov	eax, DWORD PTR ?cnt@?1??CreateFixup@@9@9
	mov	DWORD PTR [rsp+32], eax
	mov	r9d, DWORD PTR option$[rsp]
	mov	r8d, DWORD PTR type$[rsp]
	mov	rdx, QWORD PTR tv131[rsp]
	lea	rcx, OFFSET FLAT:$SG10544
	call	DoDebugMsg1

; 111  :         sym ? sym->name : "NULL", type, option, ++cnt, fixup->locofs ));
; 112  :     return( fixup );

	mov	rax, QWORD PTR fixup$[rsp]

; 113  : }

	add	rsp, 64					; 00000040H
	pop	rdi
	ret	0
CreateFixup ENDP
_TEXT	ENDS
END
