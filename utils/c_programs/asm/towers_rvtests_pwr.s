
elf/towers_rvtests_pwr.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80010137          	lui	sp,0x80010
80000004:	80010113          	add	sp,sp,-2048 # 8000f800 <g_nodeFreeList+0xec50>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	0d078293          	add	t0,a5,208 # 800000d0 <_isr_vector>
80000010:	30529073          	csrw	mtvec,t0
80000014:	265000ef          	jal	80000a78 <main>
80000018:	230000ef          	jal	80000248 <_exit_loop>
8000001c:	00000013          	nop

Disassembly of section .text:

80000020 <AXIGPIO_writeData>:
80000020:	fe010113          	add	sp,sp,-32
80000024:	00812e23          	sw	s0,28(sp)
80000028:	02010413          	add	s0,sp,32
8000002c:	fea42623          	sw	a0,-20(s0)
80000030:	400007b7          	lui	a5,0x40000
80000034:	00878293          	add	t0,a5,8 # 40000008 <_start-0x3ffffff8>
80000038:	fec42303          	lw	t1,-20(s0)
8000003c:	0062a023          	sw	t1,0(t0)
80000040:	00000013          	nop
80000044:	01c12403          	lw	s0,28(sp)
80000048:	02010113          	add	sp,sp,32
8000004c:	00008067          	ret

80000050 <AXIGPIO_ERROR_writeData>:
80000050:	fe010113          	add	sp,sp,-32
80000054:	00812e23          	sw	s0,28(sp)
80000058:	02010413          	add	s0,sp,32
8000005c:	fea42623          	sw	a0,-20(s0)
80000060:	410002b7          	lui	t0,0x41000
80000064:	fec42303          	lw	t1,-20(s0)
80000068:	0062a023          	sw	t1,0(t0) # 41000000 <_start-0x3f000000>
8000006c:	00000013          	nop
80000070:	01c12403          	lw	s0,28(sp)
80000074:	02010113          	add	sp,sp,32
80000078:	00008067          	ret

8000007c <AXIGPIO_setInputDataDirection>:
8000007c:	ff010113          	add	sp,sp,-16
80000080:	00812623          	sw	s0,12(sp)
80000084:	01010413          	add	s0,sp,16
80000088:	400007b7          	lui	a5,0x40000
8000008c:	00478293          	add	t0,a5,4 # 40000004 <_start-0x3ffffffc>
80000090:	fff00313          	li	t1,-1
80000094:	0062a023          	sw	t1,0(t0)
80000098:	00000013          	nop
8000009c:	00c12403          	lw	s0,12(sp)
800000a0:	01010113          	add	sp,sp,16
800000a4:	00008067          	ret

800000a8 <AXIGPIO_readData>:
800000a8:	ff010113          	add	sp,sp,-16
800000ac:	00812623          	sw	s0,12(sp)
800000b0:	01010413          	add	s0,sp,16
800000b4:	400002b7          	lui	t0,0x40000
800000b8:	0002a303          	lw	t1,0(t0) # 40000000 <_start-0x40000000>
800000bc:	00030793          	mv	a5,t1
800000c0:	00078513          	mv	a0,a5
800000c4:	00c12403          	lw	s0,12(sp)
800000c8:	01010113          	add	sp,sp,16
800000cc:	00008067          	ret

800000d0 <_isr_vector>:
800000d0:	f7410113          	add	sp,sp,-140
800000d4:	09f12423          	sw	t6,136(sp)
800000d8:	09e12223          	sw	t5,132(sp)
800000dc:	09d12023          	sw	t4,128(sp)
800000e0:	07c12e23          	sw	t3,124(sp)
800000e4:	07b12c23          	sw	s11,120(sp)
800000e8:	07a12a23          	sw	s10,116(sp)
800000ec:	07912823          	sw	s9,112(sp)
800000f0:	07812623          	sw	s8,108(sp)
800000f4:	07712423          	sw	s7,104(sp)
800000f8:	07612223          	sw	s6,100(sp)
800000fc:	07512023          	sw	s5,96(sp)
80000100:	05412e23          	sw	s4,92(sp)
80000104:	05312c23          	sw	s3,88(sp)
80000108:	05212a23          	sw	s2,84(sp)
8000010c:	05112823          	sw	a7,80(sp)
80000110:	05012623          	sw	a6,76(sp)
80000114:	04f12423          	sw	a5,72(sp)
80000118:	04e12223          	sw	a4,68(sp)
8000011c:	04d12023          	sw	a3,64(sp)
80000120:	02c12e23          	sw	a2,60(sp)
80000124:	02b12c23          	sw	a1,56(sp)
80000128:	02a12a23          	sw	a0,52(sp)
8000012c:	02912823          	sw	s1,48(sp)
80000130:	02812623          	sw	s0,44(sp)
80000134:	02712423          	sw	t2,40(sp)
80000138:	02612223          	sw	t1,36(sp)
8000013c:	02512023          	sw	t0,32(sp)
80000140:	00312c23          	sw	gp,24(sp)
80000144:	00212a23          	sw	sp,20(sp)
80000148:	00112823          	sw	ra,16(sp)
8000014c:	34202473          	csrr	s0,mcause
80000150:	00812423          	sw	s0,8(sp)
80000154:	30002473          	csrr	s0,mstatus
80000158:	00812223          	sw	s0,4(sp)
8000015c:	34102473          	csrr	s0,mepc
80000160:	00812023          	sw	s0,0(sp)
80000164:	00010513          	mv	a0,sp
80000168:	08c000ef          	jal	800001f4 <_exception_handler>
8000016c:	00000013          	nop

80000170 <get_exno>:
80000170:	fe010113          	add	sp,sp,-32
80000174:	00812e23          	sw	s0,28(sp)
80000178:	02010413          	add	s0,sp,32
8000017c:	342027f3          	csrr	a5,mcause
80000180:	fef42623          	sw	a5,-20(s0)
80000184:	fec42783          	lw	a5,-20(s0)
80000188:	00078513          	mv	a0,a5
8000018c:	01c12403          	lw	s0,28(sp)
80000190:	02010113          	add	sp,sp,32
80000194:	00008067          	ret

80000198 <is_exception>:
80000198:	fe010113          	add	sp,sp,-32
8000019c:	00812e23          	sw	s0,28(sp)
800001a0:	02010413          	add	s0,sp,32
800001a4:	fea42623          	sw	a0,-20(s0)
800001a8:	fec42783          	lw	a5,-20(s0)
800001ac:	00f037b3          	snez	a5,a5
800001b0:	0ff7f793          	zext.b	a5,a5
800001b4:	00078513          	mv	a0,a5
800001b8:	01c12403          	lw	s0,28(sp)
800001bc:	02010113          	add	sp,sp,32
800001c0:	00008067          	ret

800001c4 <is_otp_load_error_exception>:
800001c4:	fe010113          	add	sp,sp,-32
800001c8:	00812e23          	sw	s0,28(sp)
800001cc:	02010413          	add	s0,sp,32
800001d0:	fea42623          	sw	a0,-20(s0)
800001d4:	fec42783          	lw	a5,-20(s0)
800001d8:	fe378793          	add	a5,a5,-29
800001dc:	0017b793          	seqz	a5,a5
800001e0:	0ff7f793          	zext.b	a5,a5
800001e4:	00078513          	mv	a0,a5
800001e8:	01c12403          	lw	s0,28(sp)
800001ec:	02010113          	add	sp,sp,32
800001f0:	00008067          	ret

800001f4 <_exception_handler>:
800001f4:	f7dff0ef          	jal	80000170 <get_exno>
800001f8:	00050493          	mv	s1,a0
800001fc:	00048513          	mv	a0,s1
80000200:	fc5ff0ef          	jal	800001c4 <is_otp_load_error_exception>
80000204:	00050793          	mv	a5,a0
80000208:	00078863          	beqz	a5,80000218 <_exception_handler+0x24>
8000020c:	00100513          	li	a0,1
80000210:	e41ff0ef          	jal	80000050 <AXIGPIO_ERROR_writeData>
80000214:	0280006f          	j	8000023c <_exception_handler+0x48>
80000218:	00048513          	mv	a0,s1
8000021c:	f7dff0ef          	jal	80000198 <is_exception>
80000220:	00050793          	mv	a5,a0
80000224:	00078863          	beqz	a5,80000234 <_exception_handler+0x40>
80000228:	00100513          	li	a0,1
8000022c:	e25ff0ef          	jal	80000050 <AXIGPIO_ERROR_writeData>
80000230:	00c0006f          	j	8000023c <_exception_handler+0x48>
80000234:	00100513          	li	a0,1
80000238:	e19ff0ef          	jal	80000050 <AXIGPIO_ERROR_writeData>
8000023c:	7b201073          	csrw	dscratch0,zero
80000240:	008000ef          	jal	80000248 <_exit_loop>
80000244:	00000013          	nop

80000248 <_exit_loop>:
80000248:	7b201073          	csrw	dscratch0,zero
8000024c:	0000006f          	j	8000024c <_exit_loop+0x4>

80000250 <verify>:
80000250:	fc010113          	add	sp,sp,-64
80000254:	02812e23          	sw	s0,60(sp)
80000258:	04010413          	add	s0,sp,64
8000025c:	fca42623          	sw	a0,-52(s0)
80000260:	fcb42423          	sw	a1,-56(s0)
80000264:	fcc42223          	sw	a2,-60(s0)
80000268:	fe042623          	sw	zero,-20(s0)
8000026c:	0a80006f          	j	80000314 <verify+0xc4>
80000270:	fec42783          	lw	a5,-20(s0)
80000274:	00279793          	sll	a5,a5,0x2
80000278:	fc842703          	lw	a4,-56(s0)
8000027c:	00f707b3          	add	a5,a4,a5
80000280:	0007a783          	lw	a5,0(a5)
80000284:	fef42423          	sw	a5,-24(s0)
80000288:	fec42783          	lw	a5,-20(s0)
8000028c:	00178793          	add	a5,a5,1
80000290:	00279793          	sll	a5,a5,0x2
80000294:	fc842703          	lw	a4,-56(s0)
80000298:	00f707b3          	add	a5,a4,a5
8000029c:	0007a783          	lw	a5,0(a5)
800002a0:	fef42223          	sw	a5,-28(s0)
800002a4:	fec42783          	lw	a5,-20(s0)
800002a8:	00279793          	sll	a5,a5,0x2
800002ac:	fc442703          	lw	a4,-60(s0)
800002b0:	00f707b3          	add	a5,a4,a5
800002b4:	0007a783          	lw	a5,0(a5)
800002b8:	fef42023          	sw	a5,-32(s0)
800002bc:	fec42783          	lw	a5,-20(s0)
800002c0:	00178793          	add	a5,a5,1
800002c4:	00279793          	sll	a5,a5,0x2
800002c8:	fc442703          	lw	a4,-60(s0)
800002cc:	00f707b3          	add	a5,a4,a5
800002d0:	0007a783          	lw	a5,0(a5)
800002d4:	fcf42e23          	sw	a5,-36(s0)
800002d8:	fe842703          	lw	a4,-24(s0)
800002dc:	fe042783          	lw	a5,-32(s0)
800002e0:	00f70863          	beq	a4,a5,800002f0 <verify+0xa0>
800002e4:	fec42783          	lw	a5,-20(s0)
800002e8:	00178793          	add	a5,a5,1
800002ec:	0a00006f          	j	8000038c <verify+0x13c>
800002f0:	fe442703          	lw	a4,-28(s0)
800002f4:	fdc42783          	lw	a5,-36(s0)
800002f8:	00f70863          	beq	a4,a5,80000308 <verify+0xb8>
800002fc:	fec42783          	lw	a5,-20(s0)
80000300:	00278793          	add	a5,a5,2
80000304:	0880006f          	j	8000038c <verify+0x13c>
80000308:	fec42783          	lw	a5,-20(s0)
8000030c:	00278793          	add	a5,a5,2
80000310:	fef42623          	sw	a5,-20(s0)
80000314:	fcc42783          	lw	a5,-52(s0)
80000318:	01f7d713          	srl	a4,a5,0x1f
8000031c:	00f707b3          	add	a5,a4,a5
80000320:	4017d793          	sra	a5,a5,0x1
80000324:	00179793          	sll	a5,a5,0x1
80000328:	fec42703          	lw	a4,-20(s0)
8000032c:	f4f742e3          	blt	a4,a5,80000270 <verify+0x20>
80000330:	fcc42783          	lw	a5,-52(s0)
80000334:	0017f793          	and	a5,a5,1
80000338:	04078863          	beqz	a5,80000388 <verify+0x138>
8000033c:	fcc42703          	lw	a4,-52(s0)
80000340:	400007b7          	lui	a5,0x40000
80000344:	fff78793          	add	a5,a5,-1 # 3fffffff <_start-0x40000001>
80000348:	00f707b3          	add	a5,a4,a5
8000034c:	00279793          	sll	a5,a5,0x2
80000350:	fc842703          	lw	a4,-56(s0)
80000354:	00f707b3          	add	a5,a4,a5
80000358:	0007a703          	lw	a4,0(a5)
8000035c:	fcc42683          	lw	a3,-52(s0)
80000360:	400007b7          	lui	a5,0x40000
80000364:	fff78793          	add	a5,a5,-1 # 3fffffff <_start-0x40000001>
80000368:	00f687b3          	add	a5,a3,a5
8000036c:	00279793          	sll	a5,a5,0x2
80000370:	fc442683          	lw	a3,-60(s0)
80000374:	00f687b3          	add	a5,a3,a5
80000378:	0007a783          	lw	a5,0(a5)
8000037c:	00f70663          	beq	a4,a5,80000388 <verify+0x138>
80000380:	fcc42783          	lw	a5,-52(s0)
80000384:	0080006f          	j	8000038c <verify+0x13c>
80000388:	00000793          	li	a5,0
8000038c:	00078513          	mv	a0,a5
80000390:	03c12403          	lw	s0,60(sp)
80000394:	04010113          	add	sp,sp,64
80000398:	00008067          	ret

8000039c <lfsr>:
8000039c:	fd010113          	add	sp,sp,-48
800003a0:	02812623          	sw	s0,44(sp)
800003a4:	03010413          	add	s0,sp,48
800003a8:	fca42c23          	sw	a0,-40(s0)
800003ac:	fcb42e23          	sw	a1,-36(s0)
800003b0:	fdc42583          	lw	a1,-36(s0)
800003b4:	01f59593          	sll	a1,a1,0x1f
800003b8:	fd842503          	lw	a0,-40(s0)
800003bc:	00155613          	srl	a2,a0,0x1
800003c0:	00c5e633          	or	a2,a1,a2
800003c4:	fdc42583          	lw	a1,-36(s0)
800003c8:	0015d693          	srl	a3,a1,0x1
800003cc:	fd842583          	lw	a1,-40(s0)
800003d0:	00c5c833          	xor	a6,a1,a2
800003d4:	fdc42583          	lw	a1,-36(s0)
800003d8:	00d5c8b3          	xor	a7,a1,a3
800003dc:	00187693          	and	a3,a6,1
800003e0:	fed42423          	sw	a3,-24(s0)
800003e4:	0008f693          	and	a3,a7,0
800003e8:	fed42623          	sw	a3,-20(s0)
800003ec:	fdc42683          	lw	a3,-36(s0)
800003f0:	01f69693          	sll	a3,a3,0x1f
800003f4:	fd842603          	lw	a2,-40(s0)
800003f8:	00165713          	srl	a4,a2,0x1
800003fc:	00e6e733          	or	a4,a3,a4
80000400:	fdc42683          	lw	a3,-36(s0)
80000404:	0016d793          	srl	a5,a3,0x1
80000408:	fe842683          	lw	a3,-24(s0)
8000040c:	01e69393          	sll	t2,a3,0x1e
80000410:	00000313          	li	t1,0
80000414:	00676e33          	or	t3,a4,t1
80000418:	0077eeb3          	or	t4,a5,t2
8000041c:	000e0713          	mv	a4,t3
80000420:	000e8793          	mv	a5,t4
80000424:	00070513          	mv	a0,a4
80000428:	00078593          	mv	a1,a5
8000042c:	02c12403          	lw	s0,44(sp)
80000430:	03010113          	add	sp,sp,48
80000434:	00008067          	ret

80000438 <insn_len>:
80000438:	fe010113          	add	sp,sp,-32
8000043c:	00812e23          	sw	s0,28(sp)
80000440:	02010413          	add	s0,sp,32
80000444:	fea42623          	sw	a0,-20(s0)
80000448:	fec42783          	lw	a5,-20(s0)
8000044c:	0007d783          	lhu	a5,0(a5)
80000450:	0037f793          	and	a5,a5,3
80000454:	00078663          	beqz	a5,80000460 <insn_len+0x28>
80000458:	00400793          	li	a5,4
8000045c:	0080006f          	j	80000464 <insn_len+0x2c>
80000460:	00200793          	li	a5,2
80000464:	00078513          	mv	a0,a5
80000468:	01c12403          	lw	s0,28(sp)
8000046c:	02010113          	add	sp,sp,32
80000470:	00008067          	ret

80000474 <_wait_ms>:
80000474:	fd010113          	add	sp,sp,-48
80000478:	02812623          	sw	s0,44(sp)
8000047c:	03010413          	add	s0,sp,48
80000480:	fca42e23          	sw	a0,-36(s0)
80000484:	fdc42703          	lw	a4,-36(s0)
80000488:	000067b7          	lui	a5,0x6
8000048c:	1a878793          	add	a5,a5,424 # 61a8 <_start-0x7fff9e58>
80000490:	02f707b3          	mul	a5,a4,a5
80000494:	fef42623          	sw	a5,-20(s0)
80000498:	b00022f3          	csrr	t0,mcycle
8000049c:	00028713          	mv	a4,t0
800004a0:	fec42783          	lw	a5,-20(s0)
800004a4:	00f707b3          	add	a5,a4,a5
800004a8:	00028713          	mv	a4,t0
800004ac:	00e7fc63          	bgeu	a5,a4,800004c4 <_wait_ms+0x50>
800004b0:	b8002373          	csrr	t1,mcycleh
800004b4:	b80023f3          	csrr	t2,mcycleh
800004b8:	00030713          	mv	a4,t1
800004bc:	00038793          	mv	a5,t2
800004c0:	fef70ae3          	beq	a4,a5,800004b4 <_wait_ms+0x40>
800004c4:	b0002373          	csrr	t1,mcycle
800004c8:	00028713          	mv	a4,t0
800004cc:	fec42783          	lw	a5,-20(s0)
800004d0:	00f707b3          	add	a5,a4,a5
800004d4:	00030713          	mv	a4,t1
800004d8:	fef766e3          	bltu	a4,a5,800004c4 <_wait_ms+0x50>
800004dc:	00000013          	nop
800004e0:	00000013          	nop
800004e4:	02c12403          	lw	s0,44(sp)
800004e8:	03010113          	add	sp,sp,48
800004ec:	00008067          	ret

800004f0 <_wait_us>:
800004f0:	fd010113          	add	sp,sp,-48
800004f4:	02812623          	sw	s0,44(sp)
800004f8:	03010413          	add	s0,sp,48
800004fc:	fca42e23          	sw	a0,-36(s0)
80000500:	fdc42703          	lw	a4,-36(s0)
80000504:	00070793          	mv	a5,a4
80000508:	00179793          	sll	a5,a5,0x1
8000050c:	00e787b3          	add	a5,a5,a4
80000510:	00379793          	sll	a5,a5,0x3
80000514:	00e787b3          	add	a5,a5,a4
80000518:	fef42623          	sw	a5,-20(s0)
8000051c:	b00022f3          	csrr	t0,mcycle
80000520:	00028713          	mv	a4,t0
80000524:	fec42783          	lw	a5,-20(s0)
80000528:	00f707b3          	add	a5,a4,a5
8000052c:	00028713          	mv	a4,t0
80000530:	00e7fc63          	bgeu	a5,a4,80000548 <_wait_us+0x58>
80000534:	b8002373          	csrr	t1,mcycleh
80000538:	b80023f3          	csrr	t2,mcycleh
8000053c:	00030713          	mv	a4,t1
80000540:	00038793          	mv	a5,t2
80000544:	fef70ae3          	beq	a4,a5,80000538 <_wait_us+0x48>
80000548:	b0002373          	csrr	t1,mcycle
8000054c:	00028713          	mv	a4,t0
80000550:	fec42783          	lw	a5,-20(s0)
80000554:	00f707b3          	add	a5,a4,a5
80000558:	00030713          	mv	a4,t1
8000055c:	fef766e3          	bltu	a4,a5,80000548 <_wait_us+0x58>
80000560:	00000013          	nop
80000564:	00000013          	nop
80000568:	02c12403          	lw	s0,44(sp)
8000056c:	03010113          	add	sp,sp,48
80000570:	00008067          	ret

80000574 <list_getSize>:
80000574:	fe010113          	add	sp,sp,-32
80000578:	00812e23          	sw	s0,28(sp)
8000057c:	02010413          	add	s0,sp,32
80000580:	fea42623          	sw	a0,-20(s0)
80000584:	fec42783          	lw	a5,-20(s0)
80000588:	0007a783          	lw	a5,0(a5)
8000058c:	00078513          	mv	a0,a5
80000590:	01c12403          	lw	s0,28(sp)
80000594:	02010113          	add	sp,sp,32
80000598:	00008067          	ret

8000059c <list_init>:
8000059c:	fe010113          	add	sp,sp,-32
800005a0:	00812e23          	sw	s0,28(sp)
800005a4:	02010413          	add	s0,sp,32
800005a8:	fea42623          	sw	a0,-20(s0)
800005ac:	fec42783          	lw	a5,-20(s0)
800005b0:	0007a023          	sw	zero,0(a5)
800005b4:	fec42783          	lw	a5,-20(s0)
800005b8:	0007a223          	sw	zero,4(a5)
800005bc:	00000013          	nop
800005c0:	01c12403          	lw	s0,28(sp)
800005c4:	02010113          	add	sp,sp,32
800005c8:	00008067          	ret

800005cc <list_push>:
800005cc:	fd010113          	add	sp,sp,-48
800005d0:	02812623          	sw	s0,44(sp)
800005d4:	03010413          	add	s0,sp,48
800005d8:	fca42e23          	sw	a0,-36(s0)
800005dc:	fcb42c23          	sw	a1,-40(s0)
800005e0:	800017b7          	lui	a5,0x80001
800005e4:	bb078793          	add	a5,a5,-1104 # 80000bb0 <g_nodeFreeList>
800005e8:	0047a783          	lw	a5,4(a5)
800005ec:	fef42623          	sw	a5,-20(s0)
800005f0:	800017b7          	lui	a5,0x80001
800005f4:	bb078793          	add	a5,a5,-1104 # 80000bb0 <g_nodeFreeList>
800005f8:	0047a783          	lw	a5,4(a5)
800005fc:	0047a703          	lw	a4,4(a5)
80000600:	800017b7          	lui	a5,0x80001
80000604:	bb078793          	add	a5,a5,-1104 # 80000bb0 <g_nodeFreeList>
80000608:	00e7a223          	sw	a4,4(a5)
8000060c:	fdc42783          	lw	a5,-36(s0)
80000610:	0047a703          	lw	a4,4(a5)
80000614:	fec42783          	lw	a5,-20(s0)
80000618:	00e7a223          	sw	a4,4(a5)
8000061c:	fdc42783          	lw	a5,-36(s0)
80000620:	fec42703          	lw	a4,-20(s0)
80000624:	00e7a223          	sw	a4,4(a5)
80000628:	fdc42783          	lw	a5,-36(s0)
8000062c:	0047a783          	lw	a5,4(a5)
80000630:	fd842703          	lw	a4,-40(s0)
80000634:	00e7a023          	sw	a4,0(a5)
80000638:	fdc42783          	lw	a5,-36(s0)
8000063c:	0007a783          	lw	a5,0(a5)
80000640:	00178713          	add	a4,a5,1
80000644:	fdc42783          	lw	a5,-36(s0)
80000648:	00e7a023          	sw	a4,0(a5)
8000064c:	00000013          	nop
80000650:	02c12403          	lw	s0,44(sp)
80000654:	03010113          	add	sp,sp,48
80000658:	00008067          	ret

8000065c <list_pop>:
8000065c:	fd010113          	add	sp,sp,-48
80000660:	02812623          	sw	s0,44(sp)
80000664:	03010413          	add	s0,sp,48
80000668:	fca42e23          	sw	a0,-36(s0)
8000066c:	fdc42783          	lw	a5,-36(s0)
80000670:	0047a783          	lw	a5,4(a5)
80000674:	0007a783          	lw	a5,0(a5)
80000678:	fef42623          	sw	a5,-20(s0)
8000067c:	fdc42783          	lw	a5,-36(s0)
80000680:	0047a783          	lw	a5,4(a5)
80000684:	fef42423          	sw	a5,-24(s0)
80000688:	fdc42783          	lw	a5,-36(s0)
8000068c:	0047a783          	lw	a5,4(a5)
80000690:	0047a703          	lw	a4,4(a5)
80000694:	fdc42783          	lw	a5,-36(s0)
80000698:	00e7a223          	sw	a4,4(a5)
8000069c:	800017b7          	lui	a5,0x80001
800006a0:	bb078793          	add	a5,a5,-1104 # 80000bb0 <g_nodeFreeList>
800006a4:	0047a703          	lw	a4,4(a5)
800006a8:	fe842783          	lw	a5,-24(s0)
800006ac:	00e7a223          	sw	a4,4(a5)
800006b0:	800017b7          	lui	a5,0x80001
800006b4:	bb078793          	add	a5,a5,-1104 # 80000bb0 <g_nodeFreeList>
800006b8:	fe842703          	lw	a4,-24(s0)
800006bc:	00e7a223          	sw	a4,4(a5)
800006c0:	fdc42783          	lw	a5,-36(s0)
800006c4:	0007a783          	lw	a5,0(a5)
800006c8:	fff78713          	add	a4,a5,-1
800006cc:	fdc42783          	lw	a5,-36(s0)
800006d0:	00e7a023          	sw	a4,0(a5)
800006d4:	fec42783          	lw	a5,-20(s0)
800006d8:	00078513          	mv	a0,a5
800006dc:	02c12403          	lw	s0,44(sp)
800006e0:	03010113          	add	sp,sp,48
800006e4:	00008067          	ret

800006e8 <list_clear>:
800006e8:	fe010113          	add	sp,sp,-32
800006ec:	00112e23          	sw	ra,28(sp)
800006f0:	00812c23          	sw	s0,24(sp)
800006f4:	02010413          	add	s0,sp,32
800006f8:	fea42623          	sw	a0,-20(s0)
800006fc:	00c0006f          	j	80000708 <list_clear+0x20>
80000700:	fec42503          	lw	a0,-20(s0)
80000704:	f59ff0ef          	jal	8000065c <list_pop>
80000708:	fec42503          	lw	a0,-20(s0)
8000070c:	e69ff0ef          	jal	80000574 <list_getSize>
80000710:	00050793          	mv	a5,a0
80000714:	fef046e3          	bgtz	a5,80000700 <list_clear+0x18>
80000718:	00000013          	nop
8000071c:	00000013          	nop
80000720:	01c12083          	lw	ra,28(sp)
80000724:	01812403          	lw	s0,24(sp)
80000728:	02010113          	add	sp,sp,32
8000072c:	00008067          	ret

80000730 <towers_init>:
80000730:	fd010113          	add	sp,sp,-48
80000734:	02112623          	sw	ra,44(sp)
80000738:	02812423          	sw	s0,40(sp)
8000073c:	03010413          	add	s0,sp,48
80000740:	fca42e23          	sw	a0,-36(s0)
80000744:	fcb42c23          	sw	a1,-40(s0)
80000748:	fdc42783          	lw	a5,-36(s0)
8000074c:	fd842703          	lw	a4,-40(s0)
80000750:	00e7a023          	sw	a4,0(a5)
80000754:	fdc42783          	lw	a5,-36(s0)
80000758:	0007a223          	sw	zero,4(a5)
8000075c:	fdc42783          	lw	a5,-36(s0)
80000760:	00878793          	add	a5,a5,8
80000764:	00078513          	mv	a0,a5
80000768:	e35ff0ef          	jal	8000059c <list_init>
8000076c:	fdc42783          	lw	a5,-36(s0)
80000770:	01078793          	add	a5,a5,16
80000774:	00078513          	mv	a0,a5
80000778:	e25ff0ef          	jal	8000059c <list_init>
8000077c:	fdc42783          	lw	a5,-36(s0)
80000780:	01878793          	add	a5,a5,24
80000784:	00078513          	mv	a0,a5
80000788:	e15ff0ef          	jal	8000059c <list_init>
8000078c:	fe042623          	sw	zero,-20(s0)
80000790:	0300006f          	j	800007c0 <towers_init+0x90>
80000794:	fdc42783          	lw	a5,-36(s0)
80000798:	00878693          	add	a3,a5,8
8000079c:	fd842703          	lw	a4,-40(s0)
800007a0:	fec42783          	lw	a5,-20(s0)
800007a4:	40f707b3          	sub	a5,a4,a5
800007a8:	00078593          	mv	a1,a5
800007ac:	00068513          	mv	a0,a3
800007b0:	e1dff0ef          	jal	800005cc <list_push>
800007b4:	fec42783          	lw	a5,-20(s0)
800007b8:	00178793          	add	a5,a5,1
800007bc:	fef42623          	sw	a5,-20(s0)
800007c0:	fec42703          	lw	a4,-20(s0)
800007c4:	fd842783          	lw	a5,-40(s0)
800007c8:	fcf746e3          	blt	a4,a5,80000794 <towers_init+0x64>
800007cc:	00000013          	nop
800007d0:	00000013          	nop
800007d4:	02c12083          	lw	ra,44(sp)
800007d8:	02812403          	lw	s0,40(sp)
800007dc:	03010113          	add	sp,sp,48
800007e0:	00008067          	ret

800007e4 <towers_clear>:
800007e4:	fe010113          	add	sp,sp,-32
800007e8:	00112e23          	sw	ra,28(sp)
800007ec:	00812c23          	sw	s0,24(sp)
800007f0:	02010413          	add	s0,sp,32
800007f4:	fea42623          	sw	a0,-20(s0)
800007f8:	fec42783          	lw	a5,-20(s0)
800007fc:	00878793          	add	a5,a5,8
80000800:	00078513          	mv	a0,a5
80000804:	ee5ff0ef          	jal	800006e8 <list_clear>
80000808:	fec42783          	lw	a5,-20(s0)
8000080c:	01078793          	add	a5,a5,16
80000810:	00078513          	mv	a0,a5
80000814:	ed5ff0ef          	jal	800006e8 <list_clear>
80000818:	fec42783          	lw	a5,-20(s0)
8000081c:	01878793          	add	a5,a5,24
80000820:	00078513          	mv	a0,a5
80000824:	ec5ff0ef          	jal	800006e8 <list_clear>
80000828:	fec42783          	lw	a5,-20(s0)
8000082c:	0007a783          	lw	a5,0(a5)
80000830:	00078593          	mv	a1,a5
80000834:	fec42503          	lw	a0,-20(s0)
80000838:	ef9ff0ef          	jal	80000730 <towers_init>
8000083c:	00000013          	nop
80000840:	01c12083          	lw	ra,28(sp)
80000844:	01812403          	lw	s0,24(sp)
80000848:	02010113          	add	sp,sp,32
8000084c:	00008067          	ret

80000850 <towers_solve_h>:
80000850:	fc010113          	add	sp,sp,-64
80000854:	02112e23          	sw	ra,60(sp)
80000858:	02812c23          	sw	s0,56(sp)
8000085c:	04010413          	add	s0,sp,64
80000860:	fca42e23          	sw	a0,-36(s0)
80000864:	fcb42c23          	sw	a1,-40(s0)
80000868:	fcc42a23          	sw	a2,-44(s0)
8000086c:	fcd42823          	sw	a3,-48(s0)
80000870:	fce42623          	sw	a4,-52(s0)
80000874:	fd842703          	lw	a4,-40(s0)
80000878:	00100793          	li	a5,1
8000087c:	02f71a63          	bne	a4,a5,800008b0 <towers_solve_h+0x60>
80000880:	fd442503          	lw	a0,-44(s0)
80000884:	dd9ff0ef          	jal	8000065c <list_pop>
80000888:	fea42623          	sw	a0,-20(s0)
8000088c:	fec42583          	lw	a1,-20(s0)
80000890:	fcc42503          	lw	a0,-52(s0)
80000894:	d39ff0ef          	jal	800005cc <list_push>
80000898:	fdc42783          	lw	a5,-36(s0)
8000089c:	0047a783          	lw	a5,4(a5)
800008a0:	00178713          	add	a4,a5,1
800008a4:	fdc42783          	lw	a5,-36(s0)
800008a8:	00e7a223          	sw	a4,4(a5)
800008ac:	05c0006f          	j	80000908 <towers_solve_h+0xb8>
800008b0:	fd842783          	lw	a5,-40(s0)
800008b4:	fff78793          	add	a5,a5,-1
800008b8:	fd042703          	lw	a4,-48(s0)
800008bc:	fcc42683          	lw	a3,-52(s0)
800008c0:	fd442603          	lw	a2,-44(s0)
800008c4:	00078593          	mv	a1,a5
800008c8:	fdc42503          	lw	a0,-36(s0)
800008cc:	f85ff0ef          	jal	80000850 <towers_solve_h>
800008d0:	fcc42703          	lw	a4,-52(s0)
800008d4:	fd042683          	lw	a3,-48(s0)
800008d8:	fd442603          	lw	a2,-44(s0)
800008dc:	00100593          	li	a1,1
800008e0:	fdc42503          	lw	a0,-36(s0)
800008e4:	f6dff0ef          	jal	80000850 <towers_solve_h>
800008e8:	fd842783          	lw	a5,-40(s0)
800008ec:	fff78793          	add	a5,a5,-1
800008f0:	fcc42703          	lw	a4,-52(s0)
800008f4:	fd442683          	lw	a3,-44(s0)
800008f8:	fd042603          	lw	a2,-48(s0)
800008fc:	00078593          	mv	a1,a5
80000900:	fdc42503          	lw	a0,-36(s0)
80000904:	f4dff0ef          	jal	80000850 <towers_solve_h>
80000908:	00000013          	nop
8000090c:	03c12083          	lw	ra,60(sp)
80000910:	03812403          	lw	s0,56(sp)
80000914:	04010113          	add	sp,sp,64
80000918:	00008067          	ret

8000091c <towers_solve>:
8000091c:	fe010113          	add	sp,sp,-32
80000920:	00112e23          	sw	ra,28(sp)
80000924:	00812c23          	sw	s0,24(sp)
80000928:	02010413          	add	s0,sp,32
8000092c:	fea42623          	sw	a0,-20(s0)
80000930:	fec42783          	lw	a5,-20(s0)
80000934:	0007a583          	lw	a1,0(a5)
80000938:	fec42783          	lw	a5,-20(s0)
8000093c:	00878613          	add	a2,a5,8
80000940:	fec42783          	lw	a5,-20(s0)
80000944:	01078693          	add	a3,a5,16
80000948:	fec42783          	lw	a5,-20(s0)
8000094c:	01878793          	add	a5,a5,24
80000950:	00078713          	mv	a4,a5
80000954:	fec42503          	lw	a0,-20(s0)
80000958:	ef9ff0ef          	jal	80000850 <towers_solve_h>
8000095c:	00000013          	nop
80000960:	01c12083          	lw	ra,28(sp)
80000964:	01812403          	lw	s0,24(sp)
80000968:	02010113          	add	sp,sp,32
8000096c:	00008067          	ret

80000970 <towers_verify>:
80000970:	fd010113          	add	sp,sp,-48
80000974:	02112623          	sw	ra,44(sp)
80000978:	02812423          	sw	s0,40(sp)
8000097c:	03010413          	add	s0,sp,48
80000980:	fca42e23          	sw	a0,-36(s0)
80000984:	fe042423          	sw	zero,-24(s0)
80000988:	fdc42783          	lw	a5,-36(s0)
8000098c:	00878793          	add	a5,a5,8
80000990:	00078513          	mv	a0,a5
80000994:	be1ff0ef          	jal	80000574 <list_getSize>
80000998:	00050793          	mv	a5,a0
8000099c:	00078663          	beqz	a5,800009a8 <towers_verify+0x38>
800009a0:	00200793          	li	a5,2
800009a4:	0c00006f          	j	80000a64 <towers_verify+0xf4>
800009a8:	fdc42783          	lw	a5,-36(s0)
800009ac:	01078793          	add	a5,a5,16
800009b0:	00078513          	mv	a0,a5
800009b4:	bc1ff0ef          	jal	80000574 <list_getSize>
800009b8:	00050793          	mv	a5,a0
800009bc:	00078663          	beqz	a5,800009c8 <towers_verify+0x58>
800009c0:	00300793          	li	a5,3
800009c4:	0a00006f          	j	80000a64 <towers_verify+0xf4>
800009c8:	fdc42783          	lw	a5,-36(s0)
800009cc:	01878793          	add	a5,a5,24
800009d0:	00078513          	mv	a0,a5
800009d4:	ba1ff0ef          	jal	80000574 <list_getSize>
800009d8:	00050713          	mv	a4,a0
800009dc:	fdc42783          	lw	a5,-36(s0)
800009e0:	0007a783          	lw	a5,0(a5)
800009e4:	00f70663          	beq	a4,a5,800009f0 <towers_verify+0x80>
800009e8:	00400793          	li	a5,4
800009ec:	0780006f          	j	80000a64 <towers_verify+0xf4>
800009f0:	fdc42783          	lw	a5,-36(s0)
800009f4:	01c7a783          	lw	a5,28(a5)
800009f8:	fef42623          	sw	a5,-20(s0)
800009fc:	0340006f          	j	80000a30 <towers_verify+0xc0>
80000a00:	fe842783          	lw	a5,-24(s0)
80000a04:	00178793          	add	a5,a5,1
80000a08:	fef42423          	sw	a5,-24(s0)
80000a0c:	fec42783          	lw	a5,-20(s0)
80000a10:	0007a783          	lw	a5,0(a5)
80000a14:	fe842703          	lw	a4,-24(s0)
80000a18:	00f70663          	beq	a4,a5,80000a24 <towers_verify+0xb4>
80000a1c:	00500793          	li	a5,5
80000a20:	0440006f          	j	80000a64 <towers_verify+0xf4>
80000a24:	fec42783          	lw	a5,-20(s0)
80000a28:	0047a783          	lw	a5,4(a5)
80000a2c:	fef42623          	sw	a5,-20(s0)
80000a30:	fec42783          	lw	a5,-20(s0)
80000a34:	fc0796e3          	bnez	a5,80000a00 <towers_verify+0x90>
80000a38:	fdc42783          	lw	a5,-36(s0)
80000a3c:	0047a703          	lw	a4,4(a5)
80000a40:	fdc42783          	lw	a5,-36(s0)
80000a44:	0007a783          	lw	a5,0(a5)
80000a48:	00100693          	li	a3,1
80000a4c:	00f697b3          	sll	a5,a3,a5
80000a50:	fff78793          	add	a5,a5,-1
80000a54:	00f70663          	beq	a4,a5,80000a60 <towers_verify+0xf0>
80000a58:	00600793          	li	a5,6
80000a5c:	0080006f          	j	80000a64 <towers_verify+0xf4>
80000a60:	00000793          	li	a5,0
80000a64:	00078513          	mv	a0,a5
80000a68:	02c12083          	lw	ra,44(sp)
80000a6c:	02812403          	lw	s0,40(sp)
80000a70:	03010113          	add	sp,sp,48
80000a74:	00008067          	ret

80000a78 <main>:
80000a78:	fc010113          	add	sp,sp,-64
80000a7c:	02112e23          	sw	ra,60(sp)
80000a80:	02812c23          	sw	s0,56(sp)
80000a84:	04010413          	add	s0,sp,64
80000a88:	800017b7          	lui	a5,0x80001
80000a8c:	bb078513          	add	a0,a5,-1104 # 80000bb0 <g_nodeFreeList>
80000a90:	b0dff0ef          	jal	8000059c <list_init>
80000a94:	800017b7          	lui	a5,0x80001
80000a98:	bb078793          	add	a5,a5,-1104 # 80000bb0 <g_nodeFreeList>
80000a9c:	80001737          	lui	a4,0x80001
80000aa0:	b7870713          	add	a4,a4,-1160 # 80000b78 <g_nodePool>
80000aa4:	00e7a223          	sw	a4,4(a5)
80000aa8:	800017b7          	lui	a5,0x80001
80000aac:	bb078793          	add	a5,a5,-1104 # 80000bb0 <g_nodeFreeList>
80000ab0:	00700713          	li	a4,7
80000ab4:	00e7a023          	sw	a4,0(a5)
80000ab8:	800017b7          	lui	a5,0x80001
80000abc:	b7878793          	add	a5,a5,-1160 # 80000b78 <g_nodePool>
80000ac0:	0207aa23          	sw	zero,52(a5)
80000ac4:	800017b7          	lui	a5,0x80001
80000ac8:	b7878793          	add	a5,a5,-1160 # 80000b78 <g_nodePool>
80000acc:	06300713          	li	a4,99
80000ad0:	02e7a823          	sw	a4,48(a5)
80000ad4:	fe042623          	sw	zero,-20(s0)
80000ad8:	05c0006f          	j	80000b34 <main+0xbc>
80000adc:	fec42783          	lw	a5,-20(s0)
80000ae0:	00178793          	add	a5,a5,1
80000ae4:	00379713          	sll	a4,a5,0x3
80000ae8:	800017b7          	lui	a5,0x80001
80000aec:	b7878793          	add	a5,a5,-1160 # 80000b78 <g_nodePool>
80000af0:	00f70733          	add	a4,a4,a5
80000af4:	800017b7          	lui	a5,0x80001
80000af8:	b7878693          	add	a3,a5,-1160 # 80000b78 <g_nodePool>
80000afc:	fec42783          	lw	a5,-20(s0)
80000b00:	00379793          	sll	a5,a5,0x3
80000b04:	00f687b3          	add	a5,a3,a5
80000b08:	00e7a223          	sw	a4,4(a5)
80000b0c:	800017b7          	lui	a5,0x80001
80000b10:	b7878713          	add	a4,a5,-1160 # 80000b78 <g_nodePool>
80000b14:	fec42783          	lw	a5,-20(s0)
80000b18:	00379793          	sll	a5,a5,0x3
80000b1c:	00f707b3          	add	a5,a4,a5
80000b20:	fec42703          	lw	a4,-20(s0)
80000b24:	00e7a023          	sw	a4,0(a5)
80000b28:	fec42783          	lw	a5,-20(s0)
80000b2c:	00178793          	add	a5,a5,1
80000b30:	fef42623          	sw	a5,-20(s0)
80000b34:	fec42703          	lw	a4,-20(s0)
80000b38:	00500793          	li	a5,5
80000b3c:	fae7d0e3          	bge	a5,a4,80000adc <main+0x64>
80000b40:	fcc40793          	add	a5,s0,-52
80000b44:	00700593          	li	a1,7
80000b48:	00078513          	mv	a0,a5
80000b4c:	be5ff0ef          	jal	80000730 <towers_init>
80000b50:	fcc40793          	add	a5,s0,-52
80000b54:	00078513          	mv	a0,a5
80000b58:	c8dff0ef          	jal	800007e4 <towers_clear>
80000b5c:	fcc40793          	add	a5,s0,-52
80000b60:	00078513          	mv	a0,a5
80000b64:	db9ff0ef          	jal	8000091c <towers_solve>
80000b68:	fcc40793          	add	a5,s0,-52
80000b6c:	00078513          	mv	a0,a5
80000b70:	e01ff0ef          	jal	80000970 <towers_verify>
80000b74:	f15ff06f          	j	80000a88 <main+0x10>
