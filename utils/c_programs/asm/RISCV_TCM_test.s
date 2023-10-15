
elf/RISCV_TCM_test.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80010137          	lui	sp,0x80010
80000004:	80010113          	add	sp,sp,-2048 # 8000f800 <main+0xf730>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	02078293          	add	t0,a5,32 # 80000020 <_isr_vector>
80000010:	30529073          	csrw	mtvec,t0
80000014:	0bc000ef          	jal	800000d0 <main>
80000018:	0b0000ef          	jal	800000c8 <_exit_loop>
8000001c:	00000013          	nop

Disassembly of section .text:

80000020 <_isr_vector>:
80000020:	f7410113          	add	sp,sp,-140
80000024:	09f12423          	sw	t6,136(sp)
80000028:	09e12223          	sw	t5,132(sp)
8000002c:	09d12023          	sw	t4,128(sp)
80000030:	07c12e23          	sw	t3,124(sp)
80000034:	07b12c23          	sw	s11,120(sp)
80000038:	07a12a23          	sw	s10,116(sp)
8000003c:	07912823          	sw	s9,112(sp)
80000040:	07812623          	sw	s8,108(sp)
80000044:	07712423          	sw	s7,104(sp)
80000048:	07612223          	sw	s6,100(sp)
8000004c:	07512023          	sw	s5,96(sp)
80000050:	05412e23          	sw	s4,92(sp)
80000054:	05312c23          	sw	s3,88(sp)
80000058:	05212a23          	sw	s2,84(sp)
8000005c:	05112823          	sw	a7,80(sp)
80000060:	05012623          	sw	a6,76(sp)
80000064:	04f12423          	sw	a5,72(sp)
80000068:	04e12223          	sw	a4,68(sp)
8000006c:	04d12023          	sw	a3,64(sp)
80000070:	02c12e23          	sw	a2,60(sp)
80000074:	02b12c23          	sw	a1,56(sp)
80000078:	02a12a23          	sw	a0,52(sp)
8000007c:	02912823          	sw	s1,48(sp)
80000080:	02812623          	sw	s0,44(sp)
80000084:	02712423          	sw	t2,40(sp)
80000088:	02612223          	sw	t1,36(sp)
8000008c:	02512023          	sw	t0,32(sp)
80000090:	00312c23          	sw	gp,24(sp)
80000094:	00212a23          	sw	sp,20(sp)
80000098:	00112823          	sw	ra,16(sp)
8000009c:	34202473          	csrr	s0,mcause
800000a0:	00812423          	sw	s0,8(sp)
800000a4:	30002473          	csrr	s0,mstatus
800000a8:	00812223          	sw	s0,4(sp)
800000ac:	34102473          	csrr	s0,mepc
800000b0:	00812023          	sw	s0,0(sp)
800000b4:	00010513          	mv	a0,sp
800000b8:	008000ef          	jal	800000c0 <_exception_handler>
800000bc:	00000013          	nop

800000c0 <_exception_handler>:
800000c0:	008000ef          	jal	800000c8 <_exit_loop>
800000c4:	00000013          	nop

800000c8 <_exit_loop>:
800000c8:	7b201073          	csrw	dscratch0,zero
800000cc:	0000006f          	j	800000cc <_exit_loop+0x4>

800000d0 <main>:
800000d0:	ff010113          	add	sp,sp,-16
800000d4:	00812623          	sw	s0,12(sp)
800000d8:	01010413          	add	s0,sp,16
800000dc:	001122b7          	lui	t0,0x112
800000e0:	23328293          	add	t0,t0,563 # 112233 <_start-0x7feeddcd>
800000e4:	44556337          	lui	t1,0x44556
800000e8:	67730313          	add	t1,t1,1655 # 44556677 <_start-0x3baa9989>
800000ec:	8899b3b7          	lui	t2,0x8899b
800000f0:	abb38393          	add	t2,t2,-1349 # 8899aabb <main+0x899a9eb>
800000f4:	ccddfe37          	lui	t3,0xccddf
800000f8:	effe0e13          	add	t3,t3,-257 # ccddeeff <main+0x4cddee2f>
800000fc:	00512023          	sw	t0,0(sp)
80000100:	00611423          	sh	t1,8(sp)
80000104:	00710823          	sb	t2,16(sp)
80000108:	00000013          	nop
8000010c:	00000013          	nop
80000110:	00000013          	nop
80000114:	00000013          	nop
80000118:	00012e83          	lw	t4,0(sp)
8000011c:	00011f03          	lh	t5,0(sp)
80000120:	00010f83          	lb	t6,0(sp)
80000124:	00000793          	li	a5,0
80000128:	00078513          	mv	a0,a5
8000012c:	00c12403          	lw	s0,12(sp)
80000130:	01010113          	add	sp,sp,16
80000134:	00008067          	ret
