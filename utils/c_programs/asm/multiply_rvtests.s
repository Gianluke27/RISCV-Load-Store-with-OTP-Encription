
elf/multiply_rvtests.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80010137          	lui	sp,0x80010
80000004:	80010113          	add	sp,sp,-2048 # 8000f800 <verify_data+0xefb8>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	02078293          	add	t0,a5,32 # 80000020 <_isr_vector>
80000010:	30529073          	csrw	mtvec,t0
80000014:	3e0000ef          	jal	800003f4 <main>
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

800000d0 <verify>:
800000d0:	fc010113          	add	sp,sp,-64
800000d4:	02812e23          	sw	s0,60(sp)
800000d8:	04010413          	add	s0,sp,64
800000dc:	fca42623          	sw	a0,-52(s0)
800000e0:	fcb42423          	sw	a1,-56(s0)
800000e4:	fcc42223          	sw	a2,-60(s0)
800000e8:	fe042623          	sw	zero,-20(s0)
800000ec:	0a80006f          	j	80000194 <verify+0xc4>
800000f0:	fec42783          	lw	a5,-20(s0)
800000f4:	00279793          	sll	a5,a5,0x2
800000f8:	fc842703          	lw	a4,-56(s0)
800000fc:	00f707b3          	add	a5,a4,a5
80000100:	0007a783          	lw	a5,0(a5)
80000104:	fef42423          	sw	a5,-24(s0)
80000108:	fec42783          	lw	a5,-20(s0)
8000010c:	00178793          	add	a5,a5,1
80000110:	00279793          	sll	a5,a5,0x2
80000114:	fc842703          	lw	a4,-56(s0)
80000118:	00f707b3          	add	a5,a4,a5
8000011c:	0007a783          	lw	a5,0(a5)
80000120:	fef42223          	sw	a5,-28(s0)
80000124:	fec42783          	lw	a5,-20(s0)
80000128:	00279793          	sll	a5,a5,0x2
8000012c:	fc442703          	lw	a4,-60(s0)
80000130:	00f707b3          	add	a5,a4,a5
80000134:	0007a783          	lw	a5,0(a5)
80000138:	fef42023          	sw	a5,-32(s0)
8000013c:	fec42783          	lw	a5,-20(s0)
80000140:	00178793          	add	a5,a5,1
80000144:	00279793          	sll	a5,a5,0x2
80000148:	fc442703          	lw	a4,-60(s0)
8000014c:	00f707b3          	add	a5,a4,a5
80000150:	0007a783          	lw	a5,0(a5)
80000154:	fcf42e23          	sw	a5,-36(s0)
80000158:	fe842703          	lw	a4,-24(s0)
8000015c:	fe042783          	lw	a5,-32(s0)
80000160:	00f70863          	beq	a4,a5,80000170 <verify+0xa0>
80000164:	fec42783          	lw	a5,-20(s0)
80000168:	00178793          	add	a5,a5,1
8000016c:	0a00006f          	j	8000020c <verify+0x13c>
80000170:	fe442703          	lw	a4,-28(s0)
80000174:	fdc42783          	lw	a5,-36(s0)
80000178:	00f70863          	beq	a4,a5,80000188 <verify+0xb8>
8000017c:	fec42783          	lw	a5,-20(s0)
80000180:	00278793          	add	a5,a5,2
80000184:	0880006f          	j	8000020c <verify+0x13c>
80000188:	fec42783          	lw	a5,-20(s0)
8000018c:	00278793          	add	a5,a5,2
80000190:	fef42623          	sw	a5,-20(s0)
80000194:	fcc42783          	lw	a5,-52(s0)
80000198:	01f7d713          	srl	a4,a5,0x1f
8000019c:	00f707b3          	add	a5,a4,a5
800001a0:	4017d793          	sra	a5,a5,0x1
800001a4:	00179793          	sll	a5,a5,0x1
800001a8:	fec42703          	lw	a4,-20(s0)
800001ac:	f4f742e3          	blt	a4,a5,800000f0 <verify+0x20>
800001b0:	fcc42783          	lw	a5,-52(s0)
800001b4:	0017f793          	and	a5,a5,1
800001b8:	04078863          	beqz	a5,80000208 <verify+0x138>
800001bc:	fcc42703          	lw	a4,-52(s0)
800001c0:	400007b7          	lui	a5,0x40000
800001c4:	fff78793          	add	a5,a5,-1 # 3fffffff <_start-0x40000001>
800001c8:	00f707b3          	add	a5,a4,a5
800001cc:	00279793          	sll	a5,a5,0x2
800001d0:	fc842703          	lw	a4,-56(s0)
800001d4:	00f707b3          	add	a5,a4,a5
800001d8:	0007a703          	lw	a4,0(a5)
800001dc:	fcc42683          	lw	a3,-52(s0)
800001e0:	400007b7          	lui	a5,0x40000
800001e4:	fff78793          	add	a5,a5,-1 # 3fffffff <_start-0x40000001>
800001e8:	00f687b3          	add	a5,a3,a5
800001ec:	00279793          	sll	a5,a5,0x2
800001f0:	fc442683          	lw	a3,-60(s0)
800001f4:	00f687b3          	add	a5,a3,a5
800001f8:	0007a783          	lw	a5,0(a5)
800001fc:	00f70663          	beq	a4,a5,80000208 <verify+0x138>
80000200:	fcc42783          	lw	a5,-52(s0)
80000204:	0080006f          	j	8000020c <verify+0x13c>
80000208:	00000793          	li	a5,0
8000020c:	00078513          	mv	a0,a5
80000210:	03c12403          	lw	s0,60(sp)
80000214:	04010113          	add	sp,sp,64
80000218:	00008067          	ret

8000021c <lfsr>:
8000021c:	fd010113          	add	sp,sp,-48
80000220:	02812623          	sw	s0,44(sp)
80000224:	03010413          	add	s0,sp,48
80000228:	fca42c23          	sw	a0,-40(s0)
8000022c:	fcb42e23          	sw	a1,-36(s0)
80000230:	fdc42583          	lw	a1,-36(s0)
80000234:	01f59593          	sll	a1,a1,0x1f
80000238:	fd842503          	lw	a0,-40(s0)
8000023c:	00155613          	srl	a2,a0,0x1
80000240:	00c5e633          	or	a2,a1,a2
80000244:	fdc42583          	lw	a1,-36(s0)
80000248:	0015d693          	srl	a3,a1,0x1
8000024c:	fd842583          	lw	a1,-40(s0)
80000250:	00c5c833          	xor	a6,a1,a2
80000254:	fdc42583          	lw	a1,-36(s0)
80000258:	00d5c8b3          	xor	a7,a1,a3
8000025c:	00187693          	and	a3,a6,1
80000260:	fed42423          	sw	a3,-24(s0)
80000264:	0008f693          	and	a3,a7,0
80000268:	fed42623          	sw	a3,-20(s0)
8000026c:	fdc42683          	lw	a3,-36(s0)
80000270:	01f69693          	sll	a3,a3,0x1f
80000274:	fd842603          	lw	a2,-40(s0)
80000278:	00165713          	srl	a4,a2,0x1
8000027c:	00e6e733          	or	a4,a3,a4
80000280:	fdc42683          	lw	a3,-36(s0)
80000284:	0016d793          	srl	a5,a3,0x1
80000288:	fe842683          	lw	a3,-24(s0)
8000028c:	01e69393          	sll	t2,a3,0x1e
80000290:	00000313          	li	t1,0
80000294:	00676e33          	or	t3,a4,t1
80000298:	0077eeb3          	or	t4,a5,t2
8000029c:	000e0713          	mv	a4,t3
800002a0:	000e8793          	mv	a5,t4
800002a4:	00070513          	mv	a0,a4
800002a8:	00078593          	mv	a1,a5
800002ac:	02c12403          	lw	s0,44(sp)
800002b0:	03010113          	add	sp,sp,48
800002b4:	00008067          	ret

800002b8 <insn_len>:
800002b8:	fe010113          	add	sp,sp,-32
800002bc:	00812e23          	sw	s0,28(sp)
800002c0:	02010413          	add	s0,sp,32
800002c4:	fea42623          	sw	a0,-20(s0)
800002c8:	fec42783          	lw	a5,-20(s0)
800002cc:	0007d783          	lhu	a5,0(a5)
800002d0:	0037f793          	and	a5,a5,3
800002d4:	00078663          	beqz	a5,800002e0 <insn_len+0x28>
800002d8:	00400793          	li	a5,4
800002dc:	0080006f          	j	800002e4 <insn_len+0x2c>
800002e0:	00200793          	li	a5,2
800002e4:	00078513          	mv	a0,a5
800002e8:	01c12403          	lw	s0,28(sp)
800002ec:	02010113          	add	sp,sp,32
800002f0:	00008067          	ret

800002f4 <_wait_ms>:
800002f4:	fd010113          	add	sp,sp,-48
800002f8:	02812623          	sw	s0,44(sp)
800002fc:	03010413          	add	s0,sp,48
80000300:	fca42e23          	sw	a0,-36(s0)
80000304:	fdc42703          	lw	a4,-36(s0)
80000308:	000067b7          	lui	a5,0x6
8000030c:	1a878793          	add	a5,a5,424 # 61a8 <_start-0x7fff9e58>
80000310:	02f707b3          	mul	a5,a4,a5
80000314:	fef42623          	sw	a5,-20(s0)
80000318:	b00022f3          	csrr	t0,mcycle
8000031c:	00028713          	mv	a4,t0
80000320:	fec42783          	lw	a5,-20(s0)
80000324:	00f707b3          	add	a5,a4,a5
80000328:	00028713          	mv	a4,t0
8000032c:	00e7fc63          	bgeu	a5,a4,80000344 <_wait_ms+0x50>
80000330:	b8002373          	csrr	t1,mcycleh
80000334:	b80023f3          	csrr	t2,mcycleh
80000338:	00030713          	mv	a4,t1
8000033c:	00038793          	mv	a5,t2
80000340:	fef70ae3          	beq	a4,a5,80000334 <_wait_ms+0x40>
80000344:	b0002373          	csrr	t1,mcycle
80000348:	00028713          	mv	a4,t0
8000034c:	fec42783          	lw	a5,-20(s0)
80000350:	00f707b3          	add	a5,a4,a5
80000354:	00030713          	mv	a4,t1
80000358:	fef766e3          	bltu	a4,a5,80000344 <_wait_ms+0x50>
8000035c:	00000013          	nop
80000360:	00000013          	nop
80000364:	02c12403          	lw	s0,44(sp)
80000368:	03010113          	add	sp,sp,48
8000036c:	00008067          	ret

80000370 <_wait_us>:
80000370:	fd010113          	add	sp,sp,-48
80000374:	02812623          	sw	s0,44(sp)
80000378:	03010413          	add	s0,sp,48
8000037c:	fca42e23          	sw	a0,-36(s0)
80000380:	fdc42703          	lw	a4,-36(s0)
80000384:	00070793          	mv	a5,a4
80000388:	00179793          	sll	a5,a5,0x1
8000038c:	00e787b3          	add	a5,a5,a4
80000390:	00379793          	sll	a5,a5,0x3
80000394:	00e787b3          	add	a5,a5,a4
80000398:	fef42623          	sw	a5,-20(s0)
8000039c:	b00022f3          	csrr	t0,mcycle
800003a0:	00028713          	mv	a4,t0
800003a4:	fec42783          	lw	a5,-20(s0)
800003a8:	00f707b3          	add	a5,a4,a5
800003ac:	00028713          	mv	a4,t0
800003b0:	00e7fc63          	bgeu	a5,a4,800003c8 <_wait_us+0x58>
800003b4:	b8002373          	csrr	t1,mcycleh
800003b8:	b80023f3          	csrr	t2,mcycleh
800003bc:	00030713          	mv	a4,t1
800003c0:	00038793          	mv	a5,t2
800003c4:	fef70ae3          	beq	a4,a5,800003b8 <_wait_us+0x48>
800003c8:	b0002373          	csrr	t1,mcycle
800003cc:	00028713          	mv	a4,t0
800003d0:	fec42783          	lw	a5,-20(s0)
800003d4:	00f707b3          	add	a5,a4,a5
800003d8:	00030713          	mv	a4,t1
800003dc:	fef766e3          	bltu	a4,a5,800003c8 <_wait_us+0x58>
800003e0:	00000013          	nop
800003e4:	00000013          	nop
800003e8:	02c12403          	lw	s0,44(sp)
800003ec:	03010113          	add	sp,sp,48
800003f0:	00008067          	ret

800003f4 <main>:
800003f4:	e5010113          	add	sp,sp,-432
800003f8:	1a112623          	sw	ra,428(sp)
800003fc:	1a812423          	sw	s0,424(sp)
80000400:	1b010413          	add	s0,sp,432
80000404:	fe042623          	sw	zero,-20(s0)
80000408:	0640006f          	j	8000046c <main+0x78>
8000040c:	800007b7          	lui	a5,0x80000
80000410:	52878713          	add	a4,a5,1320 # 80000528 <input_data1>
80000414:	fec42783          	lw	a5,-20(s0)
80000418:	00279793          	sll	a5,a5,0x2
8000041c:	00f707b3          	add	a5,a4,a5
80000420:	0007a683          	lw	a3,0(a5)
80000424:	800007b7          	lui	a5,0x80000
80000428:	6b878713          	add	a4,a5,1720 # 800006b8 <input_data2>
8000042c:	fec42783          	lw	a5,-20(s0)
80000430:	00279793          	sll	a5,a5,0x2
80000434:	00f707b3          	add	a5,a4,a5
80000438:	0007a783          	lw	a5,0(a5)
8000043c:	00078593          	mv	a1,a5
80000440:	00068513          	mv	a0,a3
80000444:	064000ef          	jal	800004a8 <multiply>
80000448:	00050713          	mv	a4,a0
8000044c:	fec42783          	lw	a5,-20(s0)
80000450:	00279793          	sll	a5,a5,0x2
80000454:	ff078793          	add	a5,a5,-16
80000458:	008787b3          	add	a5,a5,s0
8000045c:	e6e7a623          	sw	a4,-404(a5)
80000460:	fec42783          	lw	a5,-20(s0)
80000464:	00178793          	add	a5,a5,1
80000468:	fef42623          	sw	a5,-20(s0)
8000046c:	fec42703          	lw	a4,-20(s0)
80000470:	06300793          	li	a5,99
80000474:	f8e7dce3          	bge	a5,a4,8000040c <main+0x18>
80000478:	e5c40713          	add	a4,s0,-420
8000047c:	800017b7          	lui	a5,0x80001
80000480:	84878613          	add	a2,a5,-1976 # 80000848 <verify_data>
80000484:	00070593          	mv	a1,a4
80000488:	06400513          	li	a0,100
8000048c:	c45ff0ef          	jal	800000d0 <verify>
80000490:	00050793          	mv	a5,a0
80000494:	00078513          	mv	a0,a5
80000498:	1ac12083          	lw	ra,428(sp)
8000049c:	1a812403          	lw	s0,424(sp)
800004a0:	1b010113          	add	sp,sp,432
800004a4:	00008067          	ret

800004a8 <multiply>:
800004a8:	fd010113          	add	sp,sp,-48
800004ac:	02812623          	sw	s0,44(sp)
800004b0:	03010413          	add	s0,sp,48
800004b4:	fca42e23          	sw	a0,-36(s0)
800004b8:	fcb42c23          	sw	a1,-40(s0)
800004bc:	fe042423          	sw	zero,-24(s0)
800004c0:	fe042623          	sw	zero,-20(s0)
800004c4:	0440006f          	j	80000508 <multiply+0x60>
800004c8:	fdc42783          	lw	a5,-36(s0)
800004cc:	0017f793          	and	a5,a5,1
800004d0:	00078a63          	beqz	a5,800004e4 <multiply+0x3c>
800004d4:	fe842703          	lw	a4,-24(s0)
800004d8:	fd842783          	lw	a5,-40(s0)
800004dc:	00f707b3          	add	a5,a4,a5
800004e0:	fef42423          	sw	a5,-24(s0)
800004e4:	fdc42783          	lw	a5,-36(s0)
800004e8:	4017d793          	sra	a5,a5,0x1
800004ec:	fcf42e23          	sw	a5,-36(s0)
800004f0:	fd842783          	lw	a5,-40(s0)
800004f4:	00179793          	sll	a5,a5,0x1
800004f8:	fcf42c23          	sw	a5,-40(s0)
800004fc:	fec42783          	lw	a5,-20(s0)
80000500:	00178793          	add	a5,a5,1
80000504:	fef42623          	sw	a5,-20(s0)
80000508:	fec42703          	lw	a4,-20(s0)
8000050c:	01f00793          	li	a5,31
80000510:	fae7dce3          	bge	a5,a4,800004c8 <multiply+0x20>
80000514:	fe842783          	lw	a5,-24(s0)
80000518:	00078513          	mv	a0,a5
8000051c:	02c12403          	lw	s0,44(sp)
80000520:	03010113          	add	sp,sp,48
80000524:	00008067          	ret
