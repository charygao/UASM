; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.23026.0 

include listing.inc

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

PUBLIC	szCVCompiler
_DATA	SEGMENT
COMM	decoflags:BYTE
COMM	broadflags:BYTE
_DATA	ENDS
_BSS	SEGMENT
$SG7516	DB	01H DUP (?)
$SG7517	DB	01H DUP (?)
$SG7520	DB	01H DUP (?)
$SG7521	DB	01H DUP (?)
$SG7680	DB	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
$SG7494	DB	'usage: HJWasm [ options ] filelist [@env_var]', 0aH, 'Ru'
	DB	'n "HJWasm -?" or "HJWasm -h" for more info', 0aH, 00H
	ORG $+4
$SG7495	DB	'%s: %lu lines, %u passes, %u ms, %u warnings, %u errors', 00H
$SG7496	DB	'HJWasm v2.13.64bit., Jan 27 2016', 00H
	ORG $+3
$SG7498	DB	'Error', 00H
	ORG $+6
$SG7499	DB	'Warning', 00H
$SG7497	DB	'Masm-compatible assembler.', 0aH, 'Portions Copyright (c'
	DB	') 1992-2002 Sybase, Inc. All Rights Reserved.', 0aH, 'Source '
	DB	'code is available under the Sybase Open Watcom Public License'
	DB	'.', 0aH, 00H
	ORG $+3
$SG7500	DB	'Fatal error', 00H
	ORG $+4
$SG7501	DB	'readonly', 00H
	ORG $+3
$SG7505	DB	'class', 00H
	ORG $+6
$SG7502	DB	'alignment', 00H
	ORG $+6
$SG7503	DB	'combine', 00H
$SG7504	DB	'segment word size', 00H
	ORG $+6
$SG7506	DB	'characteristics', 00H
$SG7507	DB	'alias', 00H
	ORG $+2
$SG7508	DB	'invalid combination of opcode and operands', 00H
	ORG $+5
$SG7509	DB	'decorator or brace expected', 00H
	ORG $+4
$SG7510	DB	'wrong mask register number', 00H
	ORG $+5
$SG7511	DB	'to many decorators', 00H
	ORG $+5
$SG7512	DB	'mismatch in the number of broadcasting elements', 00H
$SG7513	DB	'z decorator expected', 00H
	ORG $+3
$SG7514	DB	'K register expected', 00H
	ORG $+4
$SG7515	DB	'Embedded rounding is available only with reg-reg op', 00H
	ORG $+4
$SG7518	DB	'Value not within allowed range %s', 00H
	ORG $+6
$SG7519	DB	'Invalid associated segment: %s', 00H
	ORG $+1
$SG7522	DB	'Instruction prefix not allowed', 00H
	ORG $+1
$SG7523	DB	'Multiple base registers not allowed', 00H
	ORG $+4
$SG7524	DB	'Instruction or register not accepted in current CPU mode'
	DB	00H
	ORG $+3
$SG7785	DB	'Msg %u', 00H
	ORG $+5
$SG7525	DB	'invalid addressing mode with current CPU setting', 00H
	ORG $+7
$SG7526	DB	'Cannot use TR%u-TR%u with current CPU setting', 00H
	ORG $+2
$SG7527	DB	'Must be index or base register', 00H
	ORG $+1
$SG7528	DB	'Multiple index registers not allowed', 00H
	ORG $+3
$SG7529	DB	'Too few bits in RECORD: %s', 00H
	ORG $+5
$SG7530	DB	'Scale factor must be 1, 2, 4 or 8', 00H
	ORG $+6
$SG7531	DB	'Cannot be used as index register: %s', 00H
	ORG $+3
$SG7532	DB	'Base and index register differ in size', 00H
	ORG $+1
$SG7533	DB	'Expecting comma: %s', 00H
	ORG $+4
$SG7534	DB	'ORG needs a constant or local offset', 00H
	ORG $+3
$SG7535	DB	'POP CS is not allowed', 00H
	ORG $+2
$SG7536	DB	'Only MOV can use special register', 00H
	ORG $+6
$SG7537	DB	'Cannot use SHORT with CALL', 00H
	ORG $+5
$SG7538	DB	'Only SHORT jump distance is allowed', 00H
	ORG $+4
$SG7539	DB	'Syntax error', 00H
	ORG $+3
$SG7540	DB	'Prefix must be followed by an instruction', 00H
	ORG $+6
$SG7541	DB	'Syntax error: Unexpected colon', 00H
	ORG $+1
$SG7542	DB	'Operands must be the same size: %u - %u', 00H
$SG7543	DB	'Invalid instruction operands', 00H
	ORG $+3
$SG7544	DB	'Jump distance not possible in current CPU mode', 00H
	ORG $+1
$SG7545	DB	'Immediate data out of range', 00H
	ORG $+4
$SG7546	DB	'Can not use short or near modifiers with this instructio'
	DB	'n', 00H
	ORG $+6
$SG7547	DB	'Jump out of range by %d byte(s)', 00H
$SG7548	DB	'Displacement out of range: 0x%I64X', 00H
	ORG $+5
$SG7549	DB	'Initializer value too large', 00H
	ORG $+4
$SG7550	DB	'Symbol already defined: %s', 00H
	ORG $+5
$SG7551	DB	'Offset magnitude too large for specified size', 00H
	ORG $+2
$SG7552	DB	'Magnitude of offset exceeds 16 bit', 00H
	ORG $+5
$SG7553	DB	'Operand 2 too big', 00H
	ORG $+6
$SG7554	DB	'Operand 1 too small', 00H
	ORG $+4
$SG7555	DB	'Line too long', 00H
	ORG $+2
$SG7556	DB	'Too many tokens in a line', 00H
	ORG $+6
$SG7557	DB	'Symbol not defined : %s.%s', 00H
	ORG $+5
$SG7558	DB	'Expression expected: %s', 00H
$SG7559	DB	'Constant expected', 00H
	ORG $+6
$SG7560	DB	'Constant operand is expected', 00H
	ORG $+3
$SG7561	DB	'.ELSE clause already occured in this .IF block', 00H
	ORG $+1
$SG7562	DB	'Multiple overrides', 00H
	ORG $+5
$SG7563	DB	'Segment, group or segment register expected', 00H
	ORG $+4
$SG7564	DB	'Identifier too long', 00H
	ORG $+4
$SG7565	DB	'Invalid operand size for instruction', 00H
	ORG $+3
$SG7566	DB	'Not supported: %s', 00H
	ORG $+6
$SG7567	DB	'Size not specified, assuming: %s', 00H
	ORG $+7
$SG7568	DB	'Floating-point initializer ignored', 00H
	ORG $+5
$SG7569	DB	'Only SHORT and NEAR jump distance is allowed', 00H
	ORG $+3
$SG7570	DB	'Initializer magnitude too large for specified size', 00H
	ORG $+5
$SG7571	DB	'Segment attribute is defined already: %s', 00H
	ORG $+7
$SG7572	DB	'Segment definition changed: %s, %s', 00H
	ORG $+5
$SG7573	DB	'Class name too long', 00H
	ORG $+4
$SG7574	DB	'Block nesting error: %s', 00H
$SG7575	DB	'Segment attribute is unknown: %s', 00H
	ORG $+7
$SG7576	DB	'Must be in segment block', 00H
	ORG $+7
$SG7577	DB	'Segment not defined: %s', 00H
$SG7578	DB	'Colon is expected', 00H
	ORG $+6
$SG7579	DB	'Invalid qualified type: %s', 00H
	ORG $+5
$SG7580	DB	'Qualified type is expected', 00H
	ORG $+5
$SG7581	DB	'Missing macro argument: iteration %u', 00H
	ORG $+3
$SG7582	DB	'Library name is missing', 00H
$SG7583	DB	'Cannot access label through segment registers: %s', 00H
	ORG $+6
$SG7584	DB	'Line too long after expansion: %40s', 00H
	ORG $+4
$SG7585	DB	'Language type must be specified', 00H
$SG7586	DB	'PROC, MACRO or macro loop directive must precede LOCAL', 00H
	ORG $+1
$SG7587	DB	'Cannot nest procedures', 00H
	ORG $+1
$SG7588	DB	'VARARG requires C calling convention', 00H
	ORG $+3
$SG7589	DB	'Multiple .MODEL directives, .MODEL ignored', 00H
	ORG $+5
$SG7590	DB	'Model is not declared', 00H
	ORG $+2
$SG7591	DB	'Backquote missing: `%s', 00H
	ORG $+1
$SG7592	DB	'COMMENT delimiter expected', 00H
	ORG $+5
$SG7593	DB	'END directive required at end of file', 00H
	ORG $+2
$SG7594	DB	'Nesting level too deep', 00H
	ORG $+1
$SG7595	DB	'Macro nesting level too deep', 00H
	ORG $+3
$SG7596	DB	'Symbol not defined : %s', 00H
$SG7597	DB	'Language attribute conflict: %s', 00H
$SG7598	DB	'No filename specified.', 00H
	ORG $+1
$SG7599	DB	'Out of Memory', 00H
	ORG $+2
$SG7600	DB	'Cannot open file: "%s" [%s]', 00H
	ORG $+4
$SG7601	DB	'Cannot close file: %s [%u]', 00H
	ORG $+5
$SG7602	DB	'File write error: %s [%u]', 00H
	ORG $+6
$SG7603	DB	'Invalid command-line option: %s', 00H
$SG7604	DB	'Internal error in %s(%u)', 0aH, 00H
	ORG $+6
$SG7605	DB	'Expecting closing square bracket', 00H
	ORG $+7
$SG7606	DB	'Expecting file name', 00H
	ORG $+4
$SG7607	DB	'Too many errors', 00H
$SG7608	DB	'forced error%s', 00H
	ORG $+1
$SG7609	DB	'forced error: Value not equal to 0: %d%s', 00H
	ORG $+7
$SG7610	DB	'forced error: Value equal to 0: %d%s', 00H
	ORG $+3
$SG7611	DB	'forced error: symbol defined: %s', 00H
	ORG $+7
$SG7612	DB	'forced error: symbol not defined: %s', 00H
	ORG $+3
$SG7613	DB	'forced error: string blank : <%s>%s', 00H
	ORG $+4
$SG7614	DB	'forced error: string not blank : <%s>%s', 00H
$SG7615	DB	'forced error: strings not equal : <%s> : <%s>%s', 00H
$SG7616	DB	'forced error: strings equal : <%s> : <%s>%s', 00H
	ORG $+4
$SG7617	DB	'%*s%s(%u): Included by', 00H
	ORG $+1
$SG7618	DB	'%*s%s(%u)[%s]: Macro called from', 00H
	ORG $+7
$SG7619	DB	'%*s%s(%u): iteration %u: Macro called from', 00H
	ORG $+5
$SG7620	DB	'%*s%s(%u): Main line code', 00H
	ORG $+6
$SG7621	DB	'Extending jump', 00H
	ORG $+1
$SG7622	DB	'Directive ignored: %s', 00H
	ORG $+2
$SG7623	DB	'number must be a power of 2: %u', 00H
$SG7624	DB	'Incompatible with segment alignment: %s', 00H
$SG7625	DB	'Segment expected: %s', 00H
	ORG $+3
$SG7626	DB	'Incompatible CPU mode for %u-bit segment', 00H
	ORG $+7
$SG7627	DB	'Far call is converted to near call.', 00H
	ORG $+4
$SG7628	DB	'CPU option %s is not valid for selected CPU.', 00H
	ORG $+3
$SG7629	DB	'Segment ''%s'' is in another group already', 00H
	ORG $+7
$SG7630	DB	'Symbol type conflict: %s', 00H
	ORG $+7
$SG7631	DB	'Conflicting parameter definition: %s', 00H
	ORG $+3
$SG7632	DB	'PROC and PROTO calling convention conflict', 00H
	ORG $+5
$SG7633	DB	'Non-benign %s redefinition: %s', 00H
	ORG $+1
$SG7634	DB	'Too many bits in RECORD: %s', 00H
	ORG $+4
$SG7635	DB	'Statement not allowed inside structure definition', 00H
	ORG $+6
$SG7636	DB	'Unmatched block nesting: %s', 00H
	ORG $+4
$SG7637	DB	'Symbol redefinition: %s', 00H
$SG7638	DB	'Text item required', 00H
	ORG $+5
$SG7639	DB	'INVOKE argument type mismatch: argument %u', 00H
	ORG $+5
$SG7640	DB	'Too few arguments to INVOKE: %s', 00H
$SG7641	DB	'VARARG parameter must be last', 00H
	ORG $+2
$SG7642	DB	'LABEL parameter must be first', 00H
	ORG $+2
$SG7643	DB	'Too many arguments in macro call: %s: %s', 00H
	ORG $+7
$SG7644	DB	'Missing operator in expression', 00H
	ORG $+1
$SG7645	DB	'Unexpected literal found in expression: %s', 00H
	ORG $+5
$SG7646	DB	'Initializer must be a string or single item: %s', 00H
$SG7647	DB	'Too many initial values for structure: %s', 00H
	ORG $+6
$SG7648	DB	'Too many initial values for array: %s', 00H
	ORG $+2
$SG7649	DB	'String or text literal too long', 00H
$SG7650	DB	'PROLOGUE must be macro function', 00H
$SG7651	DB	'EPILOGUE must be macro procedure: %s', 00H
	ORG $+3
$SG7652	DB	'Reserved word expected', 00H
	ORG $+1
$SG7653	DB	'INVOKE requires prototype for procedure', 00H
$SG7654	DB	'Invalid type for data declaration: %s', 00H
	ORG $+2
$SG7655	DB	'Operand must be RECORD type or field', 00H
	ORG $+3
$SG7656	DB	'Unmatched macro nesting', 00H
$SG7657	DB	'Empty (null) string', 00H
	ORG $+4
$SG7658	DB	'No segment information to create fixup: %s', 00H
	ORG $+5
$SG7659	DB	'Register value overwritten by INVOKE', 00H
	ORG $+3
$SG7660	DB	'Missing quotation mark in string', 00H
	ORG $+7
$SG7661	DB	'Divide by zero in expression', 00H
	ORG $+3
$SG7662	DB	'General Failure', 00H
$SG7663	DB	'Cannot have implicit far jump or call to near label', 00H
	ORG $+4
$SG7664	DB	'Invalid use of register', 00H
$SG7665	DB	'Distance invalid for current segment', 00H
	ORG $+3
$SG7666	DB	'Initializer magnitude too large: %s', 00H
	ORG $+4
$SG7667	DB	'Cannot add two relocatable labels', 00H
	ORG $+6
$SG7668	DB	'Cannot define as public or external: %s', 00H
$SG7669	DB	'Positive value expected', 00H
$SG7670	DB	'FAR not allowed in FLAT model COMM variables', 00H
	ORG $+3
$SG7671	DB	'Too many arguments to INVOKE', 00H
	ORG $+3
$SG7672	DB	'Directive must appear inside a macro', 00H
	ORG $+3
$SG7673	DB	'Invalid type expression', 00H
$SG7674	DB	'Cannot declare scoped code label as PUBLIC: %s', 00H
	ORG $+1
$SG7675	DB	'Invalid radix tag', 00H
	ORG $+6
$SG7676	DB	'Instruction operand must have size', 00H
	ORG $+5
$SG7677	DB	'Use of register assumed to ERROR', 00H
	ORG $+7
$SG7678	DB	'Instructions and initialized data not supported in %s se'
	DB	'gments', 00H
	ORG $+1
$SG7679	DB	'Literal expected after ''=''', 00H
	ORG $+5
$SG7681	DB	'Line number information for segment without class ''CODE'
	DB	''': %s', 00H
	ORG $+3
$SG7682	DB	'Operand must be relocatable', 00H
	ORG $+4
$SG7683	DB	'Constant or relocatable label expected', 00H
	ORG $+1
$SG7684	DB	'[ELSE]IF2/.ERR2 not allowed, single-pass assembler', 00H
	ORG $+5
$SG7685	DB	'Expression too complex for UNTILCXZ', 00H
	ORG $+4
$SG7686	DB	'Operands must be in same segment', 00H
	ORG $+7
$SG7687	DB	'Invalid use of external symbol: %s', 00H
	ORG $+5
$SG7688	DB	'For -coff leading underscore required for start label: %'
	DB	's', 00H
	ORG $+6
$SG7689	DB	'Invalid command-line value, default is used: -%s', 00H
	ORG $+7
$SG7690	DB	'Unknown fixup type: %u at %s.%lX', 00H
	ORG $+7
$SG7691	DB	'Unsupported fixup type for %s: %s', 00H
	ORG $+6
$SG7692	DB	'Invalid fixup type for %s: %u at location %s.%lX', 00H
	ORG $+7
$SG7693	DB	'Syntax error in control-flow directive', 00H
	ORG $+1
$SG7694	DB	'Invalid .model parameter for flat model', 00H
$SG7695	DB	'Output format doesn''t support externals: %s', 00H
	ORG $+4
$SG7696	DB	'Invalid start label for -bin', 00H
	ORG $+3
$SG7697	DB	'No start label defined', 00H
	ORG $+1
$SG7698	DB	'No stack defined', 00H
	ORG $+7
$SG7699	DB	'Invalid alignment - value must be 2^n (n=4..15)', 00H
$SG7700	DB	'Index value past end of string: %d', 00H
	ORG $+5
$SG7701	DB	'Count value too large', 00H
	ORG $+2
$SG7702	DB	'Count must be positive or zero', 00H
	ORG $+1
$SG7703	DB	'Syntax error: %s', 00H
	ORG $+7
$SG7704	DB	'Too many unwind codes in FRAME procedure', 00H
	ORG $+7
$SG7705	DB	'Model must be FLAT', 00H
	ORG $+5
$SG7706	DB	'Must use floating-point initializer', 00H
	ORG $+4
$SG7707	DB	'ORG directive not allowed in unions', 00H
	ORG $+4
$SG7708	DB	'Struct alignment must be 1, 2, 4, 8, 16 or 32', 00H
	ORG $+2
$SG7709	DB	'Structure cannot be instanced', 00H
	ORG $+2
$SG7710	DB	'Missing angle bracket or brace in literal', 00H
	ORG $+6
$SG7711	DB	'Nondigit in number: %s', 00H
	ORG $+1
$SG7712	DB	'16bit fixup for 32bit label: %s', 00H
$SG7713	DB	'Too many macro placeholders', 00H
	ORG $+4
$SG7714	DB	'Missing macro argument: %s, parameter %u', 00H
	ORG $+7
$SG7715	DB	'Doesn''t work with 32-bit segments: %s', 00H
	ORG $+2
$SG7716	DB	'Segment exceeds 64k limit: %s', 00H
	ORG $+2
$SG7717	DB	'Not supported with OMF format: %s', 00H
	ORG $+6
$SG7718	DB	'Not supported with current output format: %s', 00H
	ORG $+3
$SG7719	DB	'Unknown default prologue argument: %s', 00H
	ORG $+2
$SG7720	DB	'LOADDS ignored in flat model', 00H
	ORG $+3
$SG7721	DB	'Missing right parenthesis in expression', 00H
$SG7722	DB	'Invalid operand for %s: %s', 00H
	ORG $+5
$SG7723	DB	'Structure improperly initialized: %s', 00H
	ORG $+3
$SG7724	DB	'Expected: %s', 00H
	ORG $+3
$SG7725	DB	'Invalid data initializer: %s', 00H
	ORG $+3
$SG7726	DB	'Expected data label', 00H
	ORG $+4
$SG7727	DB	'Expression must be a code address', 00H
	ORG $+6
$SG7728	DB	'-n Option needs a valid name parameter', 00H
	ORG $+1
$SG7729	DB	'Constant value too large: %I64Xh', 00H
	ORG $+7
$SG7730	DB	'Text macro used prior to definition: %s', 00H
$SG7731	DB	'Offset size incompatible with current segment', 00H
	ORG $+2
$SG7732	DB	'Instruction form requires 80386', 00H
$SG7733	DB	'Group/Segment offset size conflict: %s - %s', 00H
	ORG $+4
$SG7734	DB	'Assembly passes reached: %u', 00H
	ORG $+4
$SG7735	DB	'Filename parameter must be enclosed in <> or quotes', 00H
	ORG $+4
$SG7736	DB	'Start address on END directive ignored with .STARTUP', 00H
	ORG $+3
$SG7737	DB	'Invalid symbol type in expression: %s', 00H
	ORG $+2
$SG7738	DB	'Missing right parenthesis', 00H
	ORG $+6
$SG7739	DB	'Directive must be in control block', 00H
	ORG $+5
$SG7740	DB	'Expected: memory model', 00H
	ORG $+1
$SG7741	DB	'Type is wrong size for register', 00H
$SG7742	DB	'IF[n]DEF expects a plain symbol as argument: %s', 00H
$SG7743	DB	'Jump destination must specify a label', 00H
	ORG $+2
$SG7744	DB	'Ignored: %s', 00H
	ORG $+4
$SG7745	DB	'Missing argument for cmdline option', 00H
	ORG $+4
$SG7746	DB	'Invalid coprocessor register', 00H
	ORG $+3
$SG7747	DB	'Registers AH-DH may not be used with SPL-DIL or R8-R15', 00H
	ORG $+1
$SG7748	DB	'.ENDPROLOG found before EH directives', 00H
	ORG $+2
$SG7749	DB	'Missing FRAME in PROC, no unwind code will be generated', 00H
$SG7750	DB	'Bad alignment for offset in unwind code', 00H
$SG7751	DB	'Nonzero value expected', 00H
	ORG $+1
$SG7752	DB	'Size of prolog too big, must be < 256 bytes', 00H
	ORG $+4
$SG7753	DB	'Missing .ENDPROLOG: %s', 00H
	ORG $+1
$SG7754	DB	'.SAFESEH argument must be a PROC', 00H
	ORG $+7
$SG7755	DB	'Directive ignored without -%s switch', 00H
	ORG $+3
$SG7756	DB	'ELF GNU extensions (8/16-bit relocations) used', 00H
	ORG $+1
$SG7757	DB	'Syntax error in expression', 00H
	ORG $+5
$SG7758	DB	'Macro label not defined: %s', 00H
	ORG $+4
$SG7759	DB	'Procedure argument or local not referenced: %s', 00H
	ORG $+1
$SG7760	DB	'Group definition too large, truncated: %s', 00H
	ORG $+6
$SG7761	DB	'COMM variable exceeds 64K: %s', 00H
	ORG $+2
$SG7762	DB	'Must be public or external: %s', 00H
	ORG $+1
$SG7763	DB	'parameter/local name is reserved word: %s', 00H
	ORG $+6
$SG7764	DB	'real or BCD number not allowed', 00H
	ORG $+1
$SG7765	DB	'structure field expected', 00H
	ORG $+7
$SG7766	DB	'Constant value too large: %I64X%016I64Xh', 00H
	ORG $+7
$SG7767	DB	'ELSE clause already occured in this IF block', 00H
	ORG $+3
$SG7768	DB	'Illegal use of segment register', 00H
$SG7769	DB	'Group exceeds 64K: %s', 00H
	ORG $+2
$SG7770	DB	'EXPORT must be FAR: %s', 00H
	ORG $+1
$SG7783	DB	'MsgGet(%u): Msg not found!!!', 0aH, 00H
_DATA	ENDS
CONST	SEGMENT
msgtexts DQ	FLAT:$SG7494
	DQ	FLAT:$SG7495
	DQ	FLAT:$SG7496
	DQ	FLAT:$SG7497
	DQ	FLAT:$SG7498
	DQ	FLAT:$SG7499
	DQ	FLAT:$SG7500
	DQ	FLAT:$SG7501
	DQ	FLAT:$SG7502
	DQ	FLAT:$SG7503
	DQ	FLAT:$SG7504
	DQ	FLAT:$SG7505
	DQ	FLAT:$SG7506
	DQ	FLAT:$SG7507
	DQ	FLAT:$SG7508
	DQ	FLAT:$SG7509
	DQ	FLAT:$SG7510
	DQ	FLAT:$SG7511
	DQ	FLAT:$SG7512
	DQ	FLAT:$SG7513
	DQ	FLAT:$SG7514
	DQ	FLAT:$SG7515
	DQ	FLAT:$SG7516
	DQ	FLAT:$SG7517
	DQ	FLAT:$SG7518
	DQ	FLAT:$SG7519
	DQ	FLAT:$SG7520
	DQ	FLAT:$SG7521
	DQ	FLAT:$SG7522
	DQ	FLAT:$SG7523
	DQ	FLAT:$SG7524
	DQ	FLAT:$SG7525
	DQ	FLAT:$SG7526
	DQ	FLAT:$SG7527
	DQ	FLAT:$SG7528
	DQ	FLAT:$SG7529
	DQ	FLAT:$SG7530
	DQ	FLAT:$SG7531
	DQ	FLAT:$SG7532
	DQ	FLAT:$SG7533
	DQ	FLAT:$SG7534
	DQ	FLAT:$SG7535
	DQ	FLAT:$SG7536
	DQ	FLAT:$SG7537
	DQ	FLAT:$SG7538
	DQ	FLAT:$SG7539
	DQ	FLAT:$SG7540
	DQ	FLAT:$SG7541
	DQ	FLAT:$SG7542
	DQ	FLAT:$SG7543
	DQ	FLAT:$SG7544
	DQ	FLAT:$SG7545
	DQ	FLAT:$SG7546
	DQ	FLAT:$SG7547
	DQ	FLAT:$SG7548
	DQ	FLAT:$SG7549
	DQ	FLAT:$SG7550
	DQ	FLAT:$SG7551
	DQ	FLAT:$SG7552
	DQ	FLAT:$SG7553
	DQ	FLAT:$SG7554
	DQ	FLAT:$SG7555
	DQ	FLAT:$SG7556
	DQ	FLAT:$SG7557
	DQ	FLAT:$SG7558
	DQ	FLAT:$SG7559
	DQ	FLAT:$SG7560
	DQ	FLAT:$SG7561
	DQ	FLAT:$SG7562
	DQ	FLAT:$SG7563
	DQ	FLAT:$SG7564
	DQ	FLAT:$SG7565
	DQ	FLAT:$SG7566
	DQ	FLAT:$SG7567
	DQ	FLAT:$SG7568
	DQ	FLAT:$SG7569
	DQ	FLAT:$SG7570
	DQ	FLAT:$SG7571
	DQ	FLAT:$SG7572
	DQ	FLAT:$SG7573
	DQ	FLAT:$SG7574
	DQ	FLAT:$SG7575
	DQ	FLAT:$SG7576
	DQ	FLAT:$SG7577
	DQ	FLAT:$SG7578
	DQ	FLAT:$SG7579
	DQ	FLAT:$SG7580
	DQ	FLAT:$SG7581
	DQ	FLAT:$SG7582
	DQ	FLAT:$SG7583
	DQ	FLAT:$SG7584
	DQ	FLAT:$SG7585
	DQ	FLAT:$SG7586
	DQ	FLAT:$SG7587
	DQ	FLAT:$SG7588
	DQ	FLAT:$SG7589
	DQ	FLAT:$SG7590
	DQ	FLAT:$SG7591
	DQ	FLAT:$SG7592
	DQ	FLAT:$SG7593
	DQ	FLAT:$SG7594
	DQ	FLAT:$SG7595
	DQ	FLAT:$SG7596
	DQ	FLAT:$SG7597
	DQ	FLAT:$SG7598
	DQ	FLAT:$SG7599
	DQ	FLAT:$SG7600
	DQ	FLAT:$SG7601
	DQ	FLAT:$SG7602
	DQ	FLAT:$SG7603
	DQ	FLAT:$SG7604
	DQ	FLAT:$SG7605
	DQ	FLAT:$SG7606
	DQ	FLAT:$SG7607
	DQ	FLAT:$SG7608
	DQ	FLAT:$SG7609
	DQ	FLAT:$SG7610
	DQ	FLAT:$SG7611
	DQ	FLAT:$SG7612
	DQ	FLAT:$SG7613
	DQ	FLAT:$SG7614
	DQ	FLAT:$SG7615
	DQ	FLAT:$SG7616
	DQ	FLAT:$SG7617
	DQ	FLAT:$SG7618
	DQ	FLAT:$SG7619
	DQ	FLAT:$SG7620
	DQ	FLAT:$SG7621
	DQ	FLAT:$SG7622
	DQ	FLAT:$SG7623
	DQ	FLAT:$SG7624
	DQ	FLAT:$SG7625
	DQ	FLAT:$SG7626
	DQ	FLAT:$SG7627
	DQ	FLAT:$SG7628
	DQ	FLAT:$SG7629
	DQ	FLAT:$SG7630
	DQ	FLAT:$SG7631
	DQ	FLAT:$SG7632
	DQ	FLAT:$SG7633
	DQ	FLAT:$SG7634
	DQ	FLAT:$SG7635
	DQ	FLAT:$SG7636
	DQ	FLAT:$SG7637
	DQ	FLAT:$SG7638
	DQ	FLAT:$SG7639
	DQ	FLAT:$SG7640
	DQ	FLAT:$SG7641
	DQ	FLAT:$SG7642
	DQ	FLAT:$SG7643
	DQ	FLAT:$SG7644
	DQ	FLAT:$SG7645
	DQ	FLAT:$SG7646
	DQ	FLAT:$SG7647
	DQ	FLAT:$SG7648
	DQ	FLAT:$SG7649
	DQ	FLAT:$SG7650
	DQ	FLAT:$SG7651
	DQ	FLAT:$SG7652
	DQ	FLAT:$SG7653
	DQ	FLAT:$SG7654
	DQ	FLAT:$SG7655
	DQ	FLAT:$SG7656
	DQ	FLAT:$SG7657
	DQ	FLAT:$SG7658
	DQ	FLAT:$SG7659
	DQ	FLAT:$SG7660
	DQ	FLAT:$SG7661
	DQ	FLAT:$SG7662
	DQ	FLAT:$SG7663
	DQ	FLAT:$SG7664
	DQ	FLAT:$SG7665
	DQ	FLAT:$SG7666
	DQ	FLAT:$SG7667
	DQ	FLAT:$SG7668
	DQ	FLAT:$SG7669
	DQ	FLAT:$SG7670
	DQ	FLAT:$SG7671
	DQ	FLAT:$SG7672
	DQ	FLAT:$SG7673
	DQ	FLAT:$SG7674
	DQ	FLAT:$SG7675
	DQ	FLAT:$SG7676
	DQ	FLAT:$SG7677
	DQ	FLAT:$SG7678
	DQ	FLAT:$SG7679
	DQ	FLAT:$SG7680
	DQ	FLAT:$SG7681
	DQ	FLAT:$SG7682
	DQ	FLAT:$SG7683
	DQ	FLAT:$SG7684
	DQ	FLAT:$SG7685
	DQ	FLAT:$SG7686
	DQ	FLAT:$SG7687
	DQ	FLAT:$SG7688
	DQ	FLAT:$SG7689
	DQ	FLAT:$SG7690
	DQ	FLAT:$SG7691
	DQ	FLAT:$SG7692
	DQ	FLAT:$SG7693
	DQ	FLAT:$SG7694
	DQ	FLAT:$SG7695
	DQ	FLAT:$SG7696
	DQ	FLAT:$SG7697
	DQ	FLAT:$SG7698
	DQ	FLAT:$SG7699
	DQ	FLAT:$SG7700
	DQ	FLAT:$SG7701
	DQ	FLAT:$SG7702
	DQ	FLAT:$SG7703
	DQ	FLAT:$SG7704
	DQ	FLAT:$SG7705
	DQ	FLAT:$SG7706
	DQ	FLAT:$SG7707
	DQ	FLAT:$SG7708
	DQ	FLAT:$SG7709
	DQ	FLAT:$SG7710
	DQ	FLAT:$SG7711
	DQ	FLAT:$SG7712
	DQ	FLAT:$SG7713
	DQ	FLAT:$SG7714
	DQ	FLAT:$SG7715
	DQ	FLAT:$SG7716
	DQ	FLAT:$SG7717
	DQ	FLAT:$SG7718
	DQ	FLAT:$SG7719
	DQ	FLAT:$SG7720
	DQ	FLAT:$SG7721
	DQ	FLAT:$SG7722
	DQ	FLAT:$SG7723
	DQ	FLAT:$SG7724
	DQ	FLAT:$SG7725
	DQ	FLAT:$SG7726
	DQ	FLAT:$SG7727
	DQ	FLAT:$SG7728
	DQ	FLAT:$SG7729
	DQ	FLAT:$SG7730
	DQ	FLAT:$SG7731
	DQ	FLAT:$SG7732
	DQ	FLAT:$SG7733
	DQ	FLAT:$SG7734
	DQ	FLAT:$SG7735
	DQ	FLAT:$SG7736
	DQ	FLAT:$SG7737
	DQ	FLAT:$SG7738
	DQ	FLAT:$SG7739
	DQ	FLAT:$SG7740
	DQ	FLAT:$SG7741
	DQ	FLAT:$SG7742
	DQ	FLAT:$SG7743
	DQ	FLAT:$SG7744
	DQ	FLAT:$SG7745
	DQ	FLAT:$SG7746
	DQ	FLAT:$SG7747
	DQ	FLAT:$SG7748
	DQ	FLAT:$SG7749
	DQ	FLAT:$SG7750
	DQ	FLAT:$SG7751
	DQ	FLAT:$SG7752
	DQ	FLAT:$SG7753
	DQ	FLAT:$SG7754
	DQ	FLAT:$SG7755
	DQ	FLAT:$SG7756
	DQ	FLAT:$SG7757
	DQ	FLAT:$SG7758
	DQ	FLAT:$SG7759
	DQ	FLAT:$SG7760
	DQ	FLAT:$SG7761
	DQ	FLAT:$SG7762
	DQ	FLAT:$SG7763
	DQ	FLAT:$SG7764
	DQ	FLAT:$SG7765
	DQ	FLAT:$SG7766
	DQ	FLAT:$SG7767
	DQ	FLAT:$SG7768
	DQ	FLAT:$SG7769
	DQ	FLAT:$SG7770
szCVCompiler DB	'Microsoft (R) Macro Assembler Version 6.15.8803', 00H
CONST	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	_vsnprintf_l
PUBLIC	_vsprintf_l
PUBLIC	sprintf
PUBLIC	MsgGetEx
EXTRN	__imp___stdio_common_vsprintf:PROC
EXTRN	strcpy:PROC
EXTRN	DoDebugMsg:PROC
EXTRN	_RTC_CheckStackVars:PROC
EXTRN	_RTC_InitBase:PROC
EXTRN	_RTC_Shutdown:PROC
EXTRN	ModuleInfo:BYTE
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$__local_stdio_printf_options DD imagerel $LN3
	DD	imagerel $LN3+11
	DD	imagerel $unwind$__local_stdio_printf_options
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsnprintf_l DD imagerel $LN5
	DD	imagerel $LN5+140
	DD	imagerel $unwind$_vsnprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vsprintf_l DD imagerel $LN3
	DD	imagerel $LN3+88
	DD	imagerel $unwind$_vsprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$sprintf DD imagerel $LN3
	DD	imagerel $LN3+120
	DD	imagerel $unwind$sprintf
pdata	ENDS
pdata	SEGMENT
$pdata$MsgGetEx DD imagerel $LN3
	DD	imagerel $LN3+45
	DD	imagerel $unwind$MsgGetEx
$pdata$MsgGet DD imagerel MsgGet
	DD	imagerel MsgGet+173
	DD	imagerel $unwind$MsgGet
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
$unwind$MsgGetEx DD 021c01H
	DD	070053209H
$unwind$MsgGet DD 022101H
	DD	0700a320eH
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$sprintf DD 022d01H
	DD	070159219H
xdata	ENDS
;	COMDAT CONST
CONST	SEGMENT
sprintf$rtcName$0 DB 05fH
	DB	041H
	DB	072H
	DB	067H
	DB	04cH
	DB	069H
	DB	073H
	DB	074H
	DB	00H
	ORG $+7
sprintf$rtcVarDesc DD 038H
	DD	08H
	DQ	FLAT:sprintf$rtcName$0
	ORG $+48
sprintf$rtcFrameData DD 01H
	DD	00H
	DQ	FLAT:sprintf$rtcVarDesc
CONST	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsprintf_l DD 022d01H
	DD	070155219H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vsnprintf_l DD 022d01H
	DD	070157219H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$__local_stdio_printf_options DD 010201H
	DD	07002H
xdata	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\msgtext.c
_TEXT	SEGMENT
msgid$ = 48
buffer$ = 56
MsgGet	PROC

; 71   : {

	mov	QWORD PTR [rsp+16], rdx
	mov	DWORD PTR [rsp+8], ecx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rsp
	mov	ecx, 8
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, DWORD PTR [rsp+48]

; 72   : #if USERESOURCES
; 73   :     HRSRC hRsrc;
; 74   :     HGLOBAL hRes;
; 75   :     WORD * pId;
; 76   :     int i;
; 77   : 
; 78   :     hRsrc = FindResource( NULL, MAKEINTRESOURCE(1 + (msgid >> 4)), RT_STRING );
; 79   :     if (hRsrc) {
; 80   :         hRes = LoadResource( NULL, hRsrc );
; 81   :         if (hRes) {
; 82   :             pId = LockResource( hRes );
; 83   :             for (i = msgid % 16;i;i--)
; 84   :                 pId += *pId + 1;
; 85   :             i = *pId++;
; 86   :             if ( buffer == NULL )
; 87   :                 buffer = StringBufferEnd;
; 88   :             WideCharToMultiByte( CP_ACP, 0, pId, i, buffer, -1, 0, 0 );
; 89   :             buffer[i] = NULLC;
; 90   :             return( buffer );
; 91   :         }
; 92   :     }
; 93   : #else
; 94   :     if ( msgid < MSG_LAST ) {

	cmp	DWORD PTR msgid$[rsp], 277		; 00000115H
	jge	SHORT $LN2@MsgGet

; 95   :         if ( buffer ) {

	cmp	QWORD PTR buffer$[rsp], 0
	je	SHORT $LN3@MsgGet

; 96   :             strcpy( buffer, FPTR( msgtexts[msgid] ) );

	movsxd	rax, DWORD PTR msgid$[rsp]
	lea	rcx, OFFSET FLAT:msgtexts
	mov	rdx, QWORD PTR [rcx+rax*8]
	mov	rcx, QWORD PTR buffer$[rsp]
	call	strcpy

; 97   :             return( buffer );

	mov	rax, QWORD PTR buffer$[rsp]
	jmp	SHORT $LN1@MsgGet

; 98   :         } else

	jmp	SHORT $LN4@MsgGet
$LN3@MsgGet:

; 99   :             return( (char *) FPTR( msgtexts[msgid] ) );

	movsxd	rax, DWORD PTR msgid$[rsp]
	lea	rcx, OFFSET FLAT:msgtexts
	mov	rax, QWORD PTR [rcx+rax*8]
	jmp	SHORT $LN1@MsgGet
$LN4@MsgGet:
$LN2@MsgGet:

; 100  :     }
; 101  : #endif
; 102  :     DebugMsg(("MsgGet(%u): Msg not found!!!\n", msgid));

	mov	edx, DWORD PTR msgid$[rsp]
	lea	rcx, OFFSET FLAT:$SG7783
	call	DoDebugMsg

; 103  :     if ( buffer == NULL )

	cmp	QWORD PTR buffer$[rsp], 0
	jne	SHORT $LN5@MsgGet

; 104  :         buffer = StringBufferEnd;

	mov	rax, QWORD PTR ModuleInfo+488
	mov	QWORD PTR buffer$[rsp], rax
$LN5@MsgGet:

; 105  :     sprintf( buffer, "Msg %u", msgid );

	mov	r8d, DWORD PTR msgid$[rsp]
	lea	rdx, OFFSET FLAT:$SG7785
	mov	rcx, QWORD PTR buffer$[rsp]
	call	sprintf

; 106  :     return( buffer );

	mov	rax, QWORD PTR buffer$[rsp]
$LN1@MsgGet:

; 107  : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
MsgGet	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File d:\hjwasm\hjwasm2.13.1s\hjwasm2.13.1s\msgtext.c
_TEXT	SEGMENT
msgid$ = 48
MsgGetEx PROC

; 111  : {

$LN3:
	mov	DWORD PTR [rsp+8], ecx
	push	rdi
	sub	rsp, 32					; 00000020H
	mov	rdi, rsp
	mov	ecx, 8
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, DWORD PTR [rsp+48]

; 112  :     return( MsgGet( msgid, NULL ) );

	xor	edx, edx
	mov	ecx, DWORD PTR msgid$[rsp]
	call	MsgGet

; 113  : }

	add	rsp, 32					; 00000020H
	pop	rdi
	ret	0
MsgGetEx ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT sprintf
_TEXT	SEGMENT
_Result$ = 32
_ArgList$ = 56
_Buffer$ = 96
_Format$ = 104
sprintf	PROC						; COMDAT

; 1776 : {

$LN3:
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	push	rdi
	sub	rsp, 80					; 00000050H
	mov	rdi, rsp
	mov	ecx, 20
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+96]

; 1777 :     int _Result;
; 1778 :     va_list _ArgList;
; 1779 :     __crt_va_start(_ArgList, _Format);

	lea	rax, QWORD PTR _Format$[rsp+8]
	mov	QWORD PTR _ArgList$[rsp], rax

; 1780 : 
; 1781 :     #pragma warning(push)
; 1782 :     #pragma warning(disable: 4996) // Deprecation
; 1783 :     _Result = _vsprintf_l(_Buffer, _Format, NULL, _ArgList);

	mov	r9, QWORD PTR _ArgList$[rsp]
	xor	r8d, r8d
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	rcx, QWORD PTR _Buffer$[rsp]
	call	_vsprintf_l
	mov	DWORD PTR _Result$[rsp], eax

; 1784 :     #pragma warning(pop)
; 1785 : 
; 1786 :     __crt_va_end(_ArgList);

	mov	QWORD PTR _ArgList$[rsp], 0

; 1787 :     return _Result;

	mov	eax, DWORD PTR _Result$[rsp]

; 1788 : }

	mov	edi, eax
	mov	rcx, rsp
	lea	rdx, OFFSET FLAT:sprintf$rtcFrameData
	call	_RTC_CheckStackVars
	mov	eax, edi
	add	rsp, 80					; 00000050H
	pop	rdi
	ret	0
sprintf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsprintf_l
_TEXT	SEGMENT
_Buffer$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vsprintf_l PROC					; COMDAT

; 1455 : {

$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	push	rdi
	sub	rsp, 48					; 00000030H
	mov	rdi, rsp
	mov	ecx, 12
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	rcx, QWORD PTR [rsp+64]

; 1456 :     #pragma warning(push)
; 1457 :     #pragma warning(disable: 4996) // Deprecation
; 1458 :     return _vsnprintf_l(_Buffer, (size_t)-1, _Format, _Locale, _ArgList);

	mov	rax, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+32], rax
	mov	r9, QWORD PTR _Locale$[rsp]
	mov	r8, QWORD PTR _Format$[rsp]
	mov	rdx, -1
	mov	rcx, QWORD PTR _Buffer$[rsp]
	call	_vsnprintf_l

; 1459 :     #pragma warning(pop)
; 1460 : }

	add	rsp, 48					; 00000030H
	pop	rdi
	ret	0
_vsprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\stdio.h
;	COMDAT _vsnprintf_l
_TEXT	SEGMENT
_Result$ = 48
tv74 = 52
_Buffer$ = 80
_BufferCount$ = 88
_Format$ = 96
_Locale$ = 104
_ArgList$ = 112
_vsnprintf_l PROC					; COMDAT

; 1385 : {

$LN5:
	mov	QWORD PTR [rsp+32], r9
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

; 1386 :     int const _Result = __stdio_common_vsprintf(

	call	__local_stdio_printf_options
	mov	rax, QWORD PTR [rax]
	or	rax, 1
	mov	rcx, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+40], rcx
	mov	rcx, QWORD PTR _Locale$[rsp]
	mov	QWORD PTR [rsp+32], rcx
	mov	r9, QWORD PTR _Format$[rsp]
	mov	r8, QWORD PTR _BufferCount$[rsp]
	mov	rdx, QWORD PTR _Buffer$[rsp]
	mov	rcx, rax
	call	QWORD PTR __imp___stdio_common_vsprintf
	mov	DWORD PTR _Result$[rsp], eax

; 1387 :         _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS | _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION,
; 1388 :         _Buffer, _BufferCount, _Format, _Locale, _ArgList);
; 1389 : 
; 1390 :     return _Result < 0 ? -1 : _Result;

	cmp	DWORD PTR _Result$[rsp], 0
	jge	SHORT $LN3@vsnprintf_
	mov	DWORD PTR tv74[rsp], -1
	jmp	SHORT $LN4@vsnprintf_
$LN3@vsnprintf_:
	mov	eax, DWORD PTR _Result$[rsp]
	mov	DWORD PTR tv74[rsp], eax
$LN4@vsnprintf_:
	mov	eax, DWORD PTR tv74[rsp]

; 1391 : }

	add	rsp, 64					; 00000040H
	pop	rdi
	ret	0
_vsnprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\windows kits\10\include\10.0.10150.0\ucrt\corecrt_stdio_config.h
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT

; 73   : {

$LN3:
	push	rdi

; 74   :     static unsigned __int64 _OptionsStorage;
; 75   :     return &_OptionsStorage;

	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 76   : }

	pop	rdi
	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END
