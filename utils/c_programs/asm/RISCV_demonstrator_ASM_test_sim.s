
elf/RISCV_demonstrator_ASM_test_sim.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80003137          	lui	sp,0x80003
80000004:	e4010113          	add	sp,sp,-448 # 80002e40 <_exception_routine+0x2de0>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	06078293          	add	t0,a5,96 # 80000060 <_exception_routine>
80000010:	30529073          	csrw	mtvec,t0
80000014:	800027b7          	lui	a5,0x80002
80000018:	df878313          	add	t1,a5,-520 # 80001df8 <_exception_routine+0x1d98>
8000001c:	800027b7          	lui	a5,0x80002
80000020:	20078293          	add	t0,a5,512 # 80002200 <_exception_routine+0x21a0>
80000024:	00028793          	mv	a5,t0
80000028:	df878793          	add	a5,a5,-520
8000002c:	00078293          	mv	t0,a5
80000030:	006282b3          	add	t0,t0,t1
80000034:	00c000ef          	jal	80000040 <main>
80000038:	028000ef          	jal	80000060 <_exception_routine>
8000003c:	00000013          	nop

Disassembly of section .text:

80000040 <main>:
80000040:	ff010113          	add	sp,sp,-16
80000044:	00812623          	sw	s0,12(sp)
80000048:	01010413          	add	s0,sp,16
8000004c:	00000793          	li	a5,0
80000050:	00078513          	mv	a0,a5
80000054:	00c12403          	lw	s0,12(sp)
80000058:	01010113          	add	sp,sp,16
8000005c:	00008067          	ret

80000060 <_exception_routine>:
80000060:	7b201073          	csrw	dscratch0,zero
80000064:	0000006f          	j	80000064 <_exception_routine+0x4>
