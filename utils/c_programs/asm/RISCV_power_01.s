
elf/RISCV_power_01.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80010137          	lui	sp,0x80010
80000004:	80010113          	add	sp,sp,-2048 # 8000f800 <_isr_vector+0xf1e0>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	62078293          	add	t0,a5,1568 # 80000620 <_isr_vector>
80000010:	30529073          	csrw	mtvec,t0
80000014:	00c000ef          	jal	80000020 <main>
80000018:	608000ef          	jal	80000620 <_isr_vector>
8000001c:	00000013          	nop

Disassembly of section .text:

80000020 <main>:
80000020:	81010113          	add	sp,sp,-2032
80000024:	7e812623          	sw	s0,2028(sp)
80000028:	7f010413          	add	s0,sp,2032
8000002c:	ffff92b7          	lui	t0,0xffff9
80000030:	ad028293          	add	t0,t0,-1328 # ffff8ad0 <_isr_vector+0x7fff84b0>
80000034:	00510133          	add	sp,sp,t0
80000038:	00100793          	li	a5,1
8000003c:	fef42423          	sw	a5,-24(s0)
80000040:	5b80006f          	j	800005f8 <main+0x5d8>
80000044:	fe042623          	sw	zero,-20(s0)
80000048:	0440006f          	j	8000008c <main+0x6c>
8000004c:	000017b7          	lui	a5,0x1
80000050:	fa078713          	add	a4,a5,-96 # fa0 <_start-0x7ffff060>
80000054:	fec42783          	lw	a5,-20(s0)
80000058:	40f70733          	sub	a4,a4,a5
8000005c:	fe842783          	lw	a5,-24(s0)
80000060:	02f70733          	mul	a4,a4,a5
80000064:	ffffc7b7          	lui	a5,0xffffc
80000068:	ff078793          	add	a5,a5,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
8000006c:	008786b3          	add	a3,a5,s0
80000070:	fec42783          	lw	a5,-20(s0)
80000074:	00279793          	sll	a5,a5,0x2
80000078:	00f687b3          	add	a5,a3,a5
8000007c:	16e7aa23          	sw	a4,372(a5)
80000080:	fec42783          	lw	a5,-20(s0)
80000084:	00178793          	add	a5,a5,1
80000088:	fef42623          	sw	a5,-20(s0)
8000008c:	fec42703          	lw	a4,-20(s0)
80000090:	000017b7          	lui	a5,0x1
80000094:	f9f78793          	add	a5,a5,-97 # f9f <_start-0x7ffff061>
80000098:	fae7dae3          	bge	a5,a4,8000004c <main+0x2c>
8000009c:	fe042623          	sw	zero,-20(s0)
800000a0:	34c0006f          	j	800003ec <main+0x3cc>
800000a4:	ffffc7b7          	lui	a5,0xffffc
800000a8:	ff078793          	add	a5,a5,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
800000ac:	00878733          	add	a4,a5,s0
800000b0:	fec42783          	lw	a5,-20(s0)
800000b4:	00279793          	sll	a5,a5,0x2
800000b8:	00f707b3          	add	a5,a4,a5
800000bc:	1747a703          	lw	a4,372(a5)
800000c0:	06400693          	li	a3,100
800000c4:	fec42783          	lw	a5,-20(s0)
800000c8:	02f6e7b3          	rem	a5,a3,a5
800000cc:	02f70733          	mul	a4,a4,a5
800000d0:	ffff87b7          	lui	a5,0xffff8
800000d4:	ff078793          	add	a5,a5,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
800000d8:	008786b3          	add	a3,a5,s0
800000dc:	fec42783          	lw	a5,-20(s0)
800000e0:	00279793          	sll	a5,a5,0x2
800000e4:	00f687b3          	add	a5,a3,a5
800000e8:	2ee7aa23          	sw	a4,756(a5)
800000ec:	fec42783          	lw	a5,-20(s0)
800000f0:	00178793          	add	a5,a5,1
800000f4:	ffffc737          	lui	a4,0xffffc
800000f8:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
800000fc:	00870733          	add	a4,a4,s0
80000100:	00279793          	sll	a5,a5,0x2
80000104:	00f707b3          	add	a5,a4,a5
80000108:	1747a683          	lw	a3,372(a5)
8000010c:	fec42783          	lw	a5,-20(s0)
80000110:	00178793          	add	a5,a5,1
80000114:	06400713          	li	a4,100
80000118:	02f76733          	rem	a4,a4,a5
8000011c:	fec42783          	lw	a5,-20(s0)
80000120:	00178793          	add	a5,a5,1
80000124:	02e68733          	mul	a4,a3,a4
80000128:	ffff86b7          	lui	a3,0xffff8
8000012c:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000130:	008686b3          	add	a3,a3,s0
80000134:	00279793          	sll	a5,a5,0x2
80000138:	00f687b3          	add	a5,a3,a5
8000013c:	2ee7aa23          	sw	a4,756(a5)
80000140:	fec42783          	lw	a5,-20(s0)
80000144:	00278793          	add	a5,a5,2
80000148:	ffffc737          	lui	a4,0xffffc
8000014c:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
80000150:	00870733          	add	a4,a4,s0
80000154:	00279793          	sll	a5,a5,0x2
80000158:	00f707b3          	add	a5,a4,a5
8000015c:	1747a683          	lw	a3,372(a5)
80000160:	fec42783          	lw	a5,-20(s0)
80000164:	00278793          	add	a5,a5,2
80000168:	06400713          	li	a4,100
8000016c:	02f76733          	rem	a4,a4,a5
80000170:	fec42783          	lw	a5,-20(s0)
80000174:	00278793          	add	a5,a5,2
80000178:	02e68733          	mul	a4,a3,a4
8000017c:	ffff86b7          	lui	a3,0xffff8
80000180:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000184:	008686b3          	add	a3,a3,s0
80000188:	00279793          	sll	a5,a5,0x2
8000018c:	00f687b3          	add	a5,a3,a5
80000190:	2ee7aa23          	sw	a4,756(a5)
80000194:	fec42783          	lw	a5,-20(s0)
80000198:	00378793          	add	a5,a5,3
8000019c:	ffffc737          	lui	a4,0xffffc
800001a0:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
800001a4:	00870733          	add	a4,a4,s0
800001a8:	00279793          	sll	a5,a5,0x2
800001ac:	00f707b3          	add	a5,a4,a5
800001b0:	1747a683          	lw	a3,372(a5)
800001b4:	fec42783          	lw	a5,-20(s0)
800001b8:	00378793          	add	a5,a5,3
800001bc:	06400713          	li	a4,100
800001c0:	02f76733          	rem	a4,a4,a5
800001c4:	fec42783          	lw	a5,-20(s0)
800001c8:	00378793          	add	a5,a5,3
800001cc:	02e68733          	mul	a4,a3,a4
800001d0:	ffff86b7          	lui	a3,0xffff8
800001d4:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
800001d8:	008686b3          	add	a3,a3,s0
800001dc:	00279793          	sll	a5,a5,0x2
800001e0:	00f687b3          	add	a5,a3,a5
800001e4:	2ee7aa23          	sw	a4,756(a5)
800001e8:	fec42783          	lw	a5,-20(s0)
800001ec:	00478793          	add	a5,a5,4
800001f0:	ffffc737          	lui	a4,0xffffc
800001f4:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
800001f8:	00870733          	add	a4,a4,s0
800001fc:	00279793          	sll	a5,a5,0x2
80000200:	00f707b3          	add	a5,a4,a5
80000204:	1747a683          	lw	a3,372(a5)
80000208:	fec42783          	lw	a5,-20(s0)
8000020c:	00478793          	add	a5,a5,4
80000210:	06400713          	li	a4,100
80000214:	02f76733          	rem	a4,a4,a5
80000218:	fec42783          	lw	a5,-20(s0)
8000021c:	00478793          	add	a5,a5,4
80000220:	02e68733          	mul	a4,a3,a4
80000224:	ffff86b7          	lui	a3,0xffff8
80000228:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
8000022c:	008686b3          	add	a3,a3,s0
80000230:	00279793          	sll	a5,a5,0x2
80000234:	00f687b3          	add	a5,a3,a5
80000238:	2ee7aa23          	sw	a4,756(a5)
8000023c:	fec42783          	lw	a5,-20(s0)
80000240:	00578793          	add	a5,a5,5
80000244:	ffffc737          	lui	a4,0xffffc
80000248:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
8000024c:	00870733          	add	a4,a4,s0
80000250:	00279793          	sll	a5,a5,0x2
80000254:	00f707b3          	add	a5,a4,a5
80000258:	1747a683          	lw	a3,372(a5)
8000025c:	fec42783          	lw	a5,-20(s0)
80000260:	00578793          	add	a5,a5,5
80000264:	06400713          	li	a4,100
80000268:	02f76733          	rem	a4,a4,a5
8000026c:	fec42783          	lw	a5,-20(s0)
80000270:	00578793          	add	a5,a5,5
80000274:	02e68733          	mul	a4,a3,a4
80000278:	ffff86b7          	lui	a3,0xffff8
8000027c:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000280:	008686b3          	add	a3,a3,s0
80000284:	00279793          	sll	a5,a5,0x2
80000288:	00f687b3          	add	a5,a3,a5
8000028c:	2ee7aa23          	sw	a4,756(a5)
80000290:	fec42783          	lw	a5,-20(s0)
80000294:	00678793          	add	a5,a5,6
80000298:	ffffc737          	lui	a4,0xffffc
8000029c:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
800002a0:	00870733          	add	a4,a4,s0
800002a4:	00279793          	sll	a5,a5,0x2
800002a8:	00f707b3          	add	a5,a4,a5
800002ac:	1747a683          	lw	a3,372(a5)
800002b0:	fec42783          	lw	a5,-20(s0)
800002b4:	00678793          	add	a5,a5,6
800002b8:	06400713          	li	a4,100
800002bc:	02f76733          	rem	a4,a4,a5
800002c0:	fec42783          	lw	a5,-20(s0)
800002c4:	00678793          	add	a5,a5,6
800002c8:	02e68733          	mul	a4,a3,a4
800002cc:	ffff86b7          	lui	a3,0xffff8
800002d0:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
800002d4:	008686b3          	add	a3,a3,s0
800002d8:	00279793          	sll	a5,a5,0x2
800002dc:	00f687b3          	add	a5,a3,a5
800002e0:	2ee7aa23          	sw	a4,756(a5)
800002e4:	fec42783          	lw	a5,-20(s0)
800002e8:	00778793          	add	a5,a5,7
800002ec:	ffffc737          	lui	a4,0xffffc
800002f0:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
800002f4:	00870733          	add	a4,a4,s0
800002f8:	00279793          	sll	a5,a5,0x2
800002fc:	00f707b3          	add	a5,a4,a5
80000300:	1747a683          	lw	a3,372(a5)
80000304:	fec42783          	lw	a5,-20(s0)
80000308:	00778793          	add	a5,a5,7
8000030c:	06400713          	li	a4,100
80000310:	02f76733          	rem	a4,a4,a5
80000314:	fec42783          	lw	a5,-20(s0)
80000318:	00778793          	add	a5,a5,7
8000031c:	02e68733          	mul	a4,a3,a4
80000320:	ffff86b7          	lui	a3,0xffff8
80000324:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000328:	008686b3          	add	a3,a3,s0
8000032c:	00279793          	sll	a5,a5,0x2
80000330:	00f687b3          	add	a5,a3,a5
80000334:	2ee7aa23          	sw	a4,756(a5)
80000338:	fec42783          	lw	a5,-20(s0)
8000033c:	00878793          	add	a5,a5,8
80000340:	ffffc737          	lui	a4,0xffffc
80000344:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
80000348:	00870733          	add	a4,a4,s0
8000034c:	00279793          	sll	a5,a5,0x2
80000350:	00f707b3          	add	a5,a4,a5
80000354:	1747a683          	lw	a3,372(a5)
80000358:	fec42783          	lw	a5,-20(s0)
8000035c:	00878793          	add	a5,a5,8
80000360:	06400713          	li	a4,100
80000364:	02f76733          	rem	a4,a4,a5
80000368:	fec42783          	lw	a5,-20(s0)
8000036c:	00878793          	add	a5,a5,8
80000370:	02e68733          	mul	a4,a3,a4
80000374:	ffff86b7          	lui	a3,0xffff8
80000378:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
8000037c:	008686b3          	add	a3,a3,s0
80000380:	00279793          	sll	a5,a5,0x2
80000384:	00f687b3          	add	a5,a3,a5
80000388:	2ee7aa23          	sw	a4,756(a5)
8000038c:	fec42783          	lw	a5,-20(s0)
80000390:	00978793          	add	a5,a5,9
80000394:	ffffc737          	lui	a4,0xffffc
80000398:	ff070713          	add	a4,a4,-16 # ffffbff0 <_isr_vector+0x7fffb9d0>
8000039c:	00870733          	add	a4,a4,s0
800003a0:	00279793          	sll	a5,a5,0x2
800003a4:	00f707b3          	add	a5,a4,a5
800003a8:	1747a683          	lw	a3,372(a5)
800003ac:	fec42783          	lw	a5,-20(s0)
800003b0:	00978793          	add	a5,a5,9
800003b4:	06400713          	li	a4,100
800003b8:	02f76733          	rem	a4,a4,a5
800003bc:	fec42783          	lw	a5,-20(s0)
800003c0:	00978793          	add	a5,a5,9
800003c4:	02e68733          	mul	a4,a3,a4
800003c8:	ffff86b7          	lui	a3,0xffff8
800003cc:	ff068693          	add	a3,a3,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
800003d0:	008686b3          	add	a3,a3,s0
800003d4:	00279793          	sll	a5,a5,0x2
800003d8:	00f687b3          	add	a5,a3,a5
800003dc:	2ee7aa23          	sw	a4,756(a5)
800003e0:	fec42783          	lw	a5,-20(s0)
800003e4:	00a78793          	add	a5,a5,10
800003e8:	fef42623          	sw	a5,-20(s0)
800003ec:	fec42703          	lw	a4,-20(s0)
800003f0:	000017b7          	lui	a5,0x1
800003f4:	f9f78793          	add	a5,a5,-97 # f9f <_start-0x7ffff061>
800003f8:	cae7d6e3          	bge	a5,a4,800000a4 <main+0x84>
800003fc:	fe042223          	sw	zero,-28(s0)
80000400:	fe042623          	sw	zero,-20(s0)
80000404:	1c40006f          	j	800005c8 <main+0x5a8>
80000408:	ffff87b7          	lui	a5,0xffff8
8000040c:	ff078793          	add	a5,a5,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000410:	00878733          	add	a4,a5,s0
80000414:	fec42783          	lw	a5,-20(s0)
80000418:	00279793          	sll	a5,a5,0x2
8000041c:	00f707b3          	add	a5,a4,a5
80000420:	2f47a783          	lw	a5,756(a5)
80000424:	fe442703          	lw	a4,-28(s0)
80000428:	00f707b3          	add	a5,a4,a5
8000042c:	fef42223          	sw	a5,-28(s0)
80000430:	fec42783          	lw	a5,-20(s0)
80000434:	00178793          	add	a5,a5,1
80000438:	ffff8737          	lui	a4,0xffff8
8000043c:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000440:	00870733          	add	a4,a4,s0
80000444:	00279793          	sll	a5,a5,0x2
80000448:	00f707b3          	add	a5,a4,a5
8000044c:	2f47a783          	lw	a5,756(a5)
80000450:	fe442703          	lw	a4,-28(s0)
80000454:	00f707b3          	add	a5,a4,a5
80000458:	fef42223          	sw	a5,-28(s0)
8000045c:	fec42783          	lw	a5,-20(s0)
80000460:	00278793          	add	a5,a5,2
80000464:	ffff8737          	lui	a4,0xffff8
80000468:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
8000046c:	00870733          	add	a4,a4,s0
80000470:	00279793          	sll	a5,a5,0x2
80000474:	00f707b3          	add	a5,a4,a5
80000478:	2f47a783          	lw	a5,756(a5)
8000047c:	fe442703          	lw	a4,-28(s0)
80000480:	00f707b3          	add	a5,a4,a5
80000484:	fef42223          	sw	a5,-28(s0)
80000488:	fec42783          	lw	a5,-20(s0)
8000048c:	00378793          	add	a5,a5,3
80000490:	ffff8737          	lui	a4,0xffff8
80000494:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000498:	00870733          	add	a4,a4,s0
8000049c:	00279793          	sll	a5,a5,0x2
800004a0:	00f707b3          	add	a5,a4,a5
800004a4:	2f47a783          	lw	a5,756(a5)
800004a8:	fe442703          	lw	a4,-28(s0)
800004ac:	00f707b3          	add	a5,a4,a5
800004b0:	fef42223          	sw	a5,-28(s0)
800004b4:	fec42783          	lw	a5,-20(s0)
800004b8:	00478793          	add	a5,a5,4
800004bc:	ffff8737          	lui	a4,0xffff8
800004c0:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
800004c4:	00870733          	add	a4,a4,s0
800004c8:	00279793          	sll	a5,a5,0x2
800004cc:	00f707b3          	add	a5,a4,a5
800004d0:	2f47a783          	lw	a5,756(a5)
800004d4:	fe442703          	lw	a4,-28(s0)
800004d8:	00f707b3          	add	a5,a4,a5
800004dc:	fef42223          	sw	a5,-28(s0)
800004e0:	fec42783          	lw	a5,-20(s0)
800004e4:	00578793          	add	a5,a5,5
800004e8:	ffff8737          	lui	a4,0xffff8
800004ec:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
800004f0:	00870733          	add	a4,a4,s0
800004f4:	00279793          	sll	a5,a5,0x2
800004f8:	00f707b3          	add	a5,a4,a5
800004fc:	2f47a783          	lw	a5,756(a5)
80000500:	fe442703          	lw	a4,-28(s0)
80000504:	00f707b3          	add	a5,a4,a5
80000508:	fef42223          	sw	a5,-28(s0)
8000050c:	fec42783          	lw	a5,-20(s0)
80000510:	00678793          	add	a5,a5,6
80000514:	ffff8737          	lui	a4,0xffff8
80000518:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
8000051c:	00870733          	add	a4,a4,s0
80000520:	00279793          	sll	a5,a5,0x2
80000524:	00f707b3          	add	a5,a4,a5
80000528:	2f47a783          	lw	a5,756(a5)
8000052c:	fe442703          	lw	a4,-28(s0)
80000530:	00f707b3          	add	a5,a4,a5
80000534:	fef42223          	sw	a5,-28(s0)
80000538:	fec42783          	lw	a5,-20(s0)
8000053c:	00778793          	add	a5,a5,7
80000540:	ffff8737          	lui	a4,0xffff8
80000544:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000548:	00870733          	add	a4,a4,s0
8000054c:	00279793          	sll	a5,a5,0x2
80000550:	00f707b3          	add	a5,a4,a5
80000554:	2f47a783          	lw	a5,756(a5)
80000558:	fe442703          	lw	a4,-28(s0)
8000055c:	00f707b3          	add	a5,a4,a5
80000560:	fef42223          	sw	a5,-28(s0)
80000564:	fec42783          	lw	a5,-20(s0)
80000568:	00878793          	add	a5,a5,8
8000056c:	ffff8737          	lui	a4,0xffff8
80000570:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
80000574:	00870733          	add	a4,a4,s0
80000578:	00279793          	sll	a5,a5,0x2
8000057c:	00f707b3          	add	a5,a4,a5
80000580:	2f47a783          	lw	a5,756(a5)
80000584:	fe442703          	lw	a4,-28(s0)
80000588:	00f707b3          	add	a5,a4,a5
8000058c:	fef42223          	sw	a5,-28(s0)
80000590:	fec42783          	lw	a5,-20(s0)
80000594:	00978793          	add	a5,a5,9
80000598:	ffff8737          	lui	a4,0xffff8
8000059c:	ff070713          	add	a4,a4,-16 # ffff7ff0 <_isr_vector+0x7fff79d0>
800005a0:	00870733          	add	a4,a4,s0
800005a4:	00279793          	sll	a5,a5,0x2
800005a8:	00f707b3          	add	a5,a4,a5
800005ac:	2f47a783          	lw	a5,756(a5)
800005b0:	fe442703          	lw	a4,-28(s0)
800005b4:	00f707b3          	add	a5,a4,a5
800005b8:	fef42223          	sw	a5,-28(s0)
800005bc:	fec42783          	lw	a5,-20(s0)
800005c0:	00a78793          	add	a5,a5,10
800005c4:	fef42623          	sw	a5,-20(s0)
800005c8:	fec42703          	lw	a4,-20(s0)
800005cc:	000017b7          	lui	a5,0x1
800005d0:	f9f78793          	add	a5,a5,-97 # f9f <_start-0x7ffff061>
800005d4:	e2e7dae3          	bge	a5,a4,80000408 <main+0x3e8>
800005d8:	00000013          	nop
800005dc:	00000013          	nop
800005e0:	00000013          	nop
800005e4:	00000013          	nop
800005e8:	00000013          	nop
800005ec:	fe842783          	lw	a5,-24(s0)
800005f0:	00178793          	add	a5,a5,1
800005f4:	fef42423          	sw	a5,-24(s0)
800005f8:	fe842783          	lw	a5,-24(s0)
800005fc:	a40794e3          	bnez	a5,80000044 <main+0x24>
80000600:	00000793          	li	a5,0
80000604:	00078513          	mv	a0,a5
80000608:	000072b7          	lui	t0,0x7
8000060c:	53028293          	add	t0,t0,1328 # 7530 <_start-0x7fff8ad0>
80000610:	00510133          	add	sp,sp,t0
80000614:	7ec12403          	lw	s0,2028(sp)
80000618:	7f010113          	add	sp,sp,2032
8000061c:	00008067          	ret

80000620 <_isr_vector>:
80000620:	342022f3          	csrr	t0,mcause
80000624:	7b201073          	csrw	dscratch0,zero
80000628:	0000006f          	j	80000628 <_isr_vector+0x8>
