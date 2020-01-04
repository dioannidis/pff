	.file "pff_ard.pas"
# Begin asmlist al_procedures

.section .text.n_main,"ax"
.globl	main
main:
.globl	PASCALMAIN
PASCALMAIN:
.Lc2:
.Lc3:
# Var fr located in register r18
# [pff_ard.pas]
# [17] begin
	call	FPC_INIT_FUNC_TABLE
# [19] uart_init();
	call	UART_ss_UART_INIT
# [20] uart_puts('*** PetitFS test. ***'#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld1)
	ldi	r25,hi8(_sPFF_ARDs_Ld1)
	call	UART_ss_UART_PUTSsPCHAR
# [21] fr := pf_mount(fs);
	ldi	r24,lo8(U_sPsPFF_ARD_ss_FS)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_FS)
	call	PFF_ss_PF_MOUNTsFATFSssFRESULT
# Var fr located in register r24
# [23] fr := pf_opendir(dr, '');
	ldi	r24,lo8(U_sPsPFF_ARD_ss_DR)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_DR)
	ldi	r22,lo8(_sPFF_ARDs_Ld2)
	ldi	r23,hi8(_sPFF_ARDs_Ld2)
	call	PFF_ss_PF_OPENDIRsDIRsPCHARssFRESULT
	mov	r2,r24
# Var fr located in register r2
# [24] uart_puts('*** List root directory'#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld3)
	ldi	r25,hi8(_sPFF_ARDs_Ld3)
	call	UART_ss_UART_PUTSsPCHAR
.Lj3:
# [28] fr := pf_readdir(dr, fi);
	ldi	r22,lo8(U_sPsPFF_ARD_ss_FI)
	ldi	r23,hi8(U_sPsPFF_ARD_ss_FI)
	ldi	r24,lo8(U_sPsPFF_ARD_ss_DR)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_DR)
	call	PFF_ss_PF_READDIRsDIRsFILINFOssFRESULT
	mov	r2,r24
# [29] uart_puts(fi.fname);
	ldi	r24,lo8(U_sPsPFF_ARD_ss_FI+9)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_FI+9)
	call	UART_ss_UART_PUTSsPCHAR
# [30] uart_puts(''#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld4)
	ldi	r25,hi8(_sPFF_ARDs_Ld4)
	call	UART_ss_UART_PUTSsPCHAR
# [32] until fi.fname[0] = char(#0);
	lds	r18,(U_sPsPFF_ARD_ss_FI+9)
	cp	r18,r1
	brne	.Lj3
# [34] fr := pf_rewinddir(dr);
	ldi	r24,lo8(U_sPsPFF_ARD_ss_DR)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_DR)
	call	PFF_ss_PF_REWINDDIRsDIRssFRESULT
	mov	r2,r24
# Var fr located in register r2
# [35] uart_puts('*** Rewind and read ... '#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld5)
	ldi	r25,hi8(_sPFF_ARDs_Ld5)
	call	UART_ss_UART_PUTSsPCHAR
.Lj6:
# [39] fr := pf_readdir(dr, fi);
	ldi	r22,lo8(U_sPsPFF_ARD_ss_FI)
	ldi	r23,hi8(U_sPsPFF_ARD_ss_FI)
	ldi	r24,lo8(U_sPsPFF_ARD_ss_DR)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_DR)
	call	PFF_ss_PF_READDIRsDIRsFILINFOssFRESULT
	mov	r2,r24
# [40] uart_puts(fi.fname);
	ldi	r24,lo8(U_sPsPFF_ARD_ss_FI+9)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_FI+9)
	call	UART_ss_UART_PUTSsPCHAR
# [41] uart_puts(''#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld4)
	ldi	r25,hi8(_sPFF_ARDs_Ld4)
	call	UART_ss_UART_PUTSsPCHAR
# [43] until fi.fname[0] = char(#0);
	lds	r18,(U_sPsPFF_ARD_ss_FI+9)
	cp	r18,r1
	brne	.Lj6
# [45] fr := pf_opendir(dr, 'RASPI');
	ldi	r24,lo8(U_sPsPFF_ARD_ss_DR)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_DR)
	ldi	r22,lo8(_sPFF_ARDs_Ld6)
	ldi	r23,hi8(_sPFF_ARDs_Ld6)
	call	PFF_ss_PF_OPENDIRsDIRsPCHARssFRESULT
	mov	r2,r24
# Var fr located in register r2
# [46] uart_puts('*** List RASPI directory - '#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld7)
	ldi	r25,hi8(_sPFF_ARDs_Ld7)
	call	UART_ss_UART_PUTSsPCHAR
.Lj9:
# [49] fr := pf_readdir(dr, fi);
	ldi	r22,lo8(U_sPsPFF_ARD_ss_FI)
	ldi	r23,hi8(U_sPsPFF_ARD_ss_FI)
	ldi	r24,lo8(U_sPsPFF_ARD_ss_DR)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_DR)
	call	PFF_ss_PF_READDIRsDIRsFILINFOssFRESULT
	mov	r2,r24
# [50] uart_puts(fi.fname);
	ldi	r24,lo8(U_sPsPFF_ARD_ss_FI+9)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_FI+9)
	call	UART_ss_UART_PUTSsPCHAR
# [51] uart_puts(''#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld4)
	ldi	r25,hi8(_sPFF_ARDs_Ld4)
	call	UART_ss_UART_PUTSsPCHAR
# [53] until fi.fname[0] = char(#0);
	lds	r18,(U_sPsPFF_ARD_ss_FI+9)
	cp	r18,r1
	brne	.Lj9
# [55] fr := pf_open('00README.TXT');
	ldi	r24,lo8(_sPFF_ARDs_Ld8)
	ldi	r25,hi8(_sPFF_ARDs_Ld8)
	call	PFF_ss_PF_OPENsPCHARssFRESULT
# Var fr located in register r24
# [56] while pf_read(@bf, 128, br) = FR_OK do
	rjmp	.Lj13
.Lj12:
# [58] if (br = 0) then
	lds	r18,(U_sPsPFF_ARD_ss_BR)
	lds	r19,(U_sPsPFF_ARD_ss_BR+1)
	lds	r20,(U_sPsPFF_ARD_ss_BR+2)
	lds	r21,(U_sPsPFF_ARD_ss_BR+3)
	cp	r18,r1
	cpc	r19,r1
	cpc	r20,r1
	cpc	r21,r1
	breq	.Lj14
# [60] bf[br] := #0;
	lds	r19,(U_sPsPFF_ARD_ss_BR)
	lds	r20,(U_sPsPFF_ARD_ss_BR+1)
	ldi	r30,lo8(U_sPsPFF_ARD_ss_BF)
	ldi	r31,hi8(U_sPsPFF_ARD_ss_BF)
	add	r30,r19
	adc	r31,r20
	st	Z,r1
# [61] uart_puts(bf);
	ldi	r24,lo8(U_sPsPFF_ARD_ss_BF)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_BF)
	call	UART_ss_UART_PUTSsPCHAR
.Lj13:
	ldi	r24,lo8(U_sPsPFF_ARD_ss_BF)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_BF)
	ldi	r18,lo8(U_sPsPFF_ARD_ss_BR)
	ldi	r19,hi8(U_sPsPFF_ARD_ss_BR)
	ldi	r20,-128
	mov	r21,r1
	mov	r22,r1
	mov	r23,r1
	call	PFF_ss_PF_READsPOINTERsLONGWORDsLONGWORDssFRESULT
	cp	r24,r1
	brne	.Lj22
# [75] end.
	rjmp	.Lj12
.Lj22:
.Lj14:
# [64] uart_puts(''#13#10);
	ldi	r24,lo8(_sPFF_ARDs_Ld4)
	ldi	r25,hi8(_sPFF_ARDs_Ld4)
	call	UART_ss_UART_PUTSsPCHAR
# [66] fr := pf_open('LICENSE.TXT');
	ldi	r24,lo8(_sPFF_ARDs_Ld9)
	ldi	r25,hi8(_sPFF_ARDs_Ld9)
	call	PFF_ss_PF_OPENsPCHARssFRESULT
# Var fr located in register r24
# [67] while pf_read(@bf, 128, br) = FR_OK do
	rjmp	.Lj18
.Lj17:
# [69] if (br = 0) then
	lds	r20,(U_sPsPFF_ARD_ss_BR)
	lds	r21,(U_sPsPFF_ARD_ss_BR+1)
	lds	r18,(U_sPsPFF_ARD_ss_BR+2)
	lds	r19,(U_sPsPFF_ARD_ss_BR+3)
	cp	r20,r1
	cpc	r21,r1
	cpc	r18,r1
	cpc	r19,r1
	breq	.Lj19
# [71] bf[br] := #0;
	lds	r19,(U_sPsPFF_ARD_ss_BR)
	lds	r20,(U_sPsPFF_ARD_ss_BR+1)
	ldi	r30,lo8(U_sPsPFF_ARD_ss_BF)
	ldi	r31,hi8(U_sPsPFF_ARD_ss_BF)
	add	r30,r19
	adc	r31,r20
	st	Z,r1
# [72] uart_puts(bf);
	ldi	r24,lo8(U_sPsPFF_ARD_ss_BF)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_BF)
	call	UART_ss_UART_PUTSsPCHAR
.Lj18:
	ldi	r24,lo8(U_sPsPFF_ARD_ss_BF)
	ldi	r25,hi8(U_sPsPFF_ARD_ss_BF)
	ldi	r18,lo8(U_sPsPFF_ARD_ss_BR)
	ldi	r19,hi8(U_sPsPFF_ARD_ss_BR)
	ldi	r20,-128
	mov	r21,r1
	mov	r22,r1
	mov	r23,r1
	call	PFF_ss_PF_READsPOINTERsLONGWORDsLONGWORDssFRESULT
	cp	r24,r1
	brne	.Lj23
	rjmp	.Lj17
.Lj23:
.Lj19:
	call	fpc_do_exit
.Lc1:
.Le0:
	.size	main, .Le0 - main

.section .text.n_FPC_INIT_FUNC_TABLE,"ax"
.globl	FPC_INIT_FUNC_TABLE
FPC_INIT_FUNC_TABLE:
# [76] 
	ret

.section .text.n_FPC_FINALIZE_FUNC_TABLE,"ax"
.globl	FPC_FINALIZE_FUNC_TABLE
FPC_FINALIZE_FUNC_TABLE:
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss.n_u_spspff_ard_ss_fs,"aw",%nobits
# [10] fs: FATFS;
	.size U_sPsPFF_ARD_ss_FS,44
U_sPsPFF_ARD_ss_FS:
	.zero 44

.section .bss.n_u_spspff_ard_ss_dr,"aw",%nobits
# [11] dr: DIR;
	.size U_sPsPFF_ARD_ss_DR,16
U_sPsPFF_ARD_ss_DR:
	.zero 16

.section .bss.n_u_spspff_ard_ss_fi,"aw",%nobits
# [12] fi: FILINFO;
	.size U_sPsPFF_ARD_ss_FI,24
U_sPsPFF_ARD_ss_FI:
	.zero 24

.section .bss.n_u_spspff_ard_ss_fr,"aw",%nobits
# [13] fr: FRESULT;
	.size U_sPsPFF_ARD_ss_FR,1
U_sPsPFF_ARD_ss_FR:
	.zero 1

.section .bss.n_u_spspff_ard_ss_bf,"aw",%nobits
# [14] bf: array[0..Pred(256)] of char;
	.size U_sPsPFF_ARD_ss_BF,256
U_sPsPFF_ARD_ss_BF:
	.zero 256

.section .bss.n_u_spspff_ard_ss_br,"aw",%nobits
# [15] br: UINT;
	.size U_sPsPFF_ARD_ss_BR,4
U_sPsPFF_ARD_ss_BR:
	.zero 4

.section .data.n_INITFINAL
	.balign 2
.globl	INITFINAL
INITFINAL:
	.byte	0,0
.Le1:
	.size	INITFINAL, .Le1 - INITFINAL

.section .data.n_FPC_THREADVARTABLES
	.balign 2
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	0
.Le2:
	.size	FPC_THREADVARTABLES, .Le2 - FPC_THREADVARTABLES

.section .data.n_FPC_RESOURCESTRINGTABLES
	.balign 2
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.short	0
.Le3:
	.size	FPC_RESOURCESTRINGTABLES, .Le3 - FPC_RESOURCESTRINGTABLES

.section .data.n_FPC_WIDEINITTABLES
	.balign 2
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.short	0
.Le4:
	.size	FPC_WIDEINITTABLES, .Le4 - FPC_WIDEINITTABLES

.section .data.n_FPC_RESSTRINITTABLES
	.balign 2
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.short	0
.Le5:
	.size	FPC_RESSTRINITTABLES, .Le5 - FPC_RESSTRINITTABLES

.section .fpc.n_version,"aw"
__fpc_ident:
	.ascii	"FPC 3.3.1 [2020/01/01] for avr - embedded"
.Le6:
	.size	__fpc_ident, .Le6 - __fpc_ident

.section .data.n___stklen
	.balign 2
.globl	__stklen
__stklen:
	.short	1024
.Le7:
	.size	__stklen, .Le7 - __stklen

.section .data.n___heapsize
	.balign 2
.globl	__heapsize
__heapsize:
	.short	128
.Le8:
	.size	__heapsize, .Le8 - __heapsize

.section .bss.n___fpc_initialheap,"aw",%nobits
	.globl __fpc_initialheap
	.size __fpc_initialheap,128
__fpc_initialheap:
	.zero 128

.section .data.n___fpc_valgrind
	.balign 2
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
.Le9:
	.size	__fpc_valgrind, .Le9 - __fpc_valgrind
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__sPFF_ARDs_Ld1
.globl	_sPFF_ARDs_Ld1
_sPFF_ARDs_Ld1:
	.ascii	"*** PetitFS test. ***\015\012\000"
.Le10:
	.size	_sPFF_ARDs_Ld1, .Le10 - _sPFF_ARDs_Ld1

.section .rodata.n__sPFF_ARDs_Ld2
.globl	_sPFF_ARDs_Ld2
_sPFF_ARDs_Ld2:
	.ascii	"\000"
.Le11:
	.size	_sPFF_ARDs_Ld2, .Le11 - _sPFF_ARDs_Ld2

.section .rodata.n__sPFF_ARDs_Ld3
.globl	_sPFF_ARDs_Ld3
_sPFF_ARDs_Ld3:
	.ascii	"*** List root directory\015\012\000"
.Le12:
	.size	_sPFF_ARDs_Ld3, .Le12 - _sPFF_ARDs_Ld3

.section .rodata.n__sPFF_ARDs_Ld4
.globl	_sPFF_ARDs_Ld4
_sPFF_ARDs_Ld4:
	.ascii	"\015\012\000"
.Le13:
	.size	_sPFF_ARDs_Ld4, .Le13 - _sPFF_ARDs_Ld4

.section .rodata.n__sPFF_ARDs_Ld5
.globl	_sPFF_ARDs_Ld5
_sPFF_ARDs_Ld5:
	.ascii	"*** Rewind and read ... \015\012\000"
.Le14:
	.size	_sPFF_ARDs_Ld5, .Le14 - _sPFF_ARDs_Ld5

.section .rodata.n__sPFF_ARDs_Ld6
.globl	_sPFF_ARDs_Ld6
_sPFF_ARDs_Ld6:
	.ascii	"RASPI\000"
.Le15:
	.size	_sPFF_ARDs_Ld6, .Le15 - _sPFF_ARDs_Ld6

.section .rodata.n__sPFF_ARDs_Ld7
.globl	_sPFF_ARDs_Ld7
_sPFF_ARDs_Ld7:
	.ascii	"*** List RASPI directory - \015\012\000"
.Le16:
	.size	_sPFF_ARDs_Ld7, .Le16 - _sPFF_ARDs_Ld7

.section .rodata.n__sPFF_ARDs_Ld8
.globl	_sPFF_ARDs_Ld8
_sPFF_ARDs_Ld8:
	.ascii	"00README.TXT\000"
.Le17:
	.size	_sPFF_ARDs_Ld8, .Le17 - _sPFF_ARDs_Ld8

.section .rodata.n__sPFF_ARDs_Ld9
.globl	_sPFF_ARDs_Ld9
_sPFF_ARDs_Ld9:
	.ascii	"LICENSE.TXT\000"
.Le18:
	.size	_sPFF_ARDs_Ld9, .Le18 - _sPFF_ARDs_Ld9
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc4:
	.long	.Lc6-.Lc5
.Lc5:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	24
	.byte	12
	.uleb128	13
	.uleb128	1
	.byte	5
	.uleb128	24
	.uleb128	0
	.balign 4,0
.Lc6:
	.long	.Lc8-.Lc7
.Lc7:
	.short	.Lc4
	.short	.Lc2
	.short	.Lc1-.Lc2
	.byte	4
	.long	.Lc3-.Lc2
	.byte	7
	.uleb128	24
	.balign 4,0
.Lc8:
# End asmlist al_dwarf_frame
