
elf/RISCV_demonstrator_02_ASM_test_sim.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80003137          	lui	sp,0x80003
80000004:	e4010113          	add	sp,sp,-448 # 80002e40 <_exception_routine+0x2c20>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	22078293          	add	t0,a5,544 # 80000220 <_exception_routine>
80000010:	30529073          	csrw	mtvec,t0
80000014:	800027b7          	lui	a5,0x80002
80000018:	df878313          	add	t1,a5,-520 # 80001df8 <_exception_routine+0x1bd8>
8000001c:	800027b7          	lui	a5,0x80002
80000020:	20078293          	add	t0,a5,512 # 80002200 <_exception_routine+0x1fe0>
80000024:	00028793          	mv	a5,t0
80000028:	df878793          	add	a5,a5,-520
8000002c:	00078293          	mv	t0,a5
80000030:	006282b3          	add	t0,t0,t1
80000034:	1bc000ef          	jal	800001f0 <main>
80000038:	1e8000ef          	jal	80000220 <_exception_routine>
8000003c:	00000013          	nop

Disassembly of section .text:

80000040 <_wait_ms>:
80000040:	fd010113          	add	sp,sp,-48
80000044:	02812623          	sw	s0,44(sp)
80000048:	03010413          	add	s0,sp,48
8000004c:	fca42e23          	sw	a0,-36(s0)
80000050:	fdc42703          	lw	a4,-36(s0)
80000054:	000067b7          	lui	a5,0x6
80000058:	1a878793          	add	a5,a5,424 # 61a8 <_start-0x7fff9e58>
8000005c:	02f707b3          	mul	a5,a4,a5
80000060:	fef42623          	sw	a5,-20(s0)
80000064:	b00022f3          	csrr	t0,mcycle
80000068:	00028713          	mv	a4,t0
8000006c:	fec42783          	lw	a5,-20(s0)
80000070:	00f707b3          	add	a5,a4,a5
80000074:	00028713          	mv	a4,t0
80000078:	00e7fc63          	bgeu	a5,a4,80000090 <_wait_ms+0x50>
8000007c:	b8002373          	csrr	t1,mcycleh
80000080:	b80023f3          	csrr	t2,mcycleh
80000084:	00030713          	mv	a4,t1
80000088:	00038793          	mv	a5,t2
8000008c:	fef70ae3          	beq	a4,a5,80000080 <_wait_ms+0x40>
80000090:	b0002373          	csrr	t1,mcycle
80000094:	00028713          	mv	a4,t0
80000098:	fec42783          	lw	a5,-20(s0)
8000009c:	00f707b3          	add	a5,a4,a5
800000a0:	00030713          	mv	a4,t1
800000a4:	fef766e3          	bltu	a4,a5,80000090 <_wait_ms+0x50>
800000a8:	00000013          	nop
800000ac:	00000013          	nop
800000b0:	02c12403          	lw	s0,44(sp)
800000b4:	03010113          	add	sp,sp,48
800000b8:	00008067          	ret

800000bc <_wait_us>:
800000bc:	fd010113          	add	sp,sp,-48
800000c0:	02812623          	sw	s0,44(sp)
800000c4:	03010413          	add	s0,sp,48
800000c8:	fca42e23          	sw	a0,-36(s0)
800000cc:	fdc42703          	lw	a4,-36(s0)
800000d0:	00070793          	mv	a5,a4
800000d4:	00179793          	sll	a5,a5,0x1
800000d8:	00e787b3          	add	a5,a5,a4
800000dc:	00379793          	sll	a5,a5,0x3
800000e0:	00e787b3          	add	a5,a5,a4
800000e4:	fef42623          	sw	a5,-20(s0)
800000e8:	b00022f3          	csrr	t0,mcycle
800000ec:	00028713          	mv	a4,t0
800000f0:	fec42783          	lw	a5,-20(s0)
800000f4:	00f707b3          	add	a5,a4,a5
800000f8:	00028713          	mv	a4,t0
800000fc:	00e7fc63          	bgeu	a5,a4,80000114 <_wait_us+0x58>
80000100:	b8002373          	csrr	t1,mcycleh
80000104:	b80023f3          	csrr	t2,mcycleh
80000108:	00030713          	mv	a4,t1
8000010c:	00038793          	mv	a5,t2
80000110:	fef70ae3          	beq	a4,a5,80000104 <_wait_us+0x48>
80000114:	b0002373          	csrr	t1,mcycle
80000118:	00028713          	mv	a4,t0
8000011c:	fec42783          	lw	a5,-20(s0)
80000120:	00f707b3          	add	a5,a4,a5
80000124:	00030713          	mv	a4,t1
80000128:	fef766e3          	bltu	a4,a5,80000114 <_wait_us+0x58>
8000012c:	00000013          	nop
80000130:	00000013          	nop
80000134:	02c12403          	lw	s0,44(sp)
80000138:	03010113          	add	sp,sp,48
8000013c:	00008067          	ret

80000140 <AXIGPIO_writeData>:
80000140:	fe010113          	add	sp,sp,-32
80000144:	00812e23          	sw	s0,28(sp)
80000148:	02010413          	add	s0,sp,32
8000014c:	fea42623          	sw	a0,-20(s0)
80000150:	400007b7          	lui	a5,0x40000
80000154:	00878293          	add	t0,a5,8 # 40000008 <_start-0x3ffffff8>
80000158:	fec42303          	lw	t1,-20(s0)
8000015c:	0062a023          	sw	t1,0(t0)
80000160:	00000013          	nop
80000164:	01c12403          	lw	s0,28(sp)
80000168:	02010113          	add	sp,sp,32
8000016c:	00008067          	ret

80000170 <AXIGPIO_ERROR_writeData>:
80000170:	fe010113          	add	sp,sp,-32
80000174:	00812e23          	sw	s0,28(sp)
80000178:	02010413          	add	s0,sp,32
8000017c:	fea42623          	sw	a0,-20(s0)
80000180:	410002b7          	lui	t0,0x41000
80000184:	fec42303          	lw	t1,-20(s0)
80000188:	0062a023          	sw	t1,0(t0) # 41000000 <_start-0x3f000000>
8000018c:	00000013          	nop
80000190:	01c12403          	lw	s0,28(sp)
80000194:	02010113          	add	sp,sp,32
80000198:	00008067          	ret

8000019c <AXIGPIO_setInputDataDirection>:
8000019c:	ff010113          	add	sp,sp,-16
800001a0:	00812623          	sw	s0,12(sp)
800001a4:	01010413          	add	s0,sp,16
800001a8:	400007b7          	lui	a5,0x40000
800001ac:	00478293          	add	t0,a5,4 # 40000004 <_start-0x3ffffffc>
800001b0:	fff00313          	li	t1,-1
800001b4:	0062a023          	sw	t1,0(t0)
800001b8:	00000013          	nop
800001bc:	00c12403          	lw	s0,12(sp)
800001c0:	01010113          	add	sp,sp,16
800001c4:	00008067          	ret

800001c8 <AXIGPIO_readData>:
800001c8:	ff010113          	add	sp,sp,-16
800001cc:	00812623          	sw	s0,12(sp)
800001d0:	01010413          	add	s0,sp,16
800001d4:	400002b7          	lui	t0,0x40000
800001d8:	0002a303          	lw	t1,0(t0) # 40000000 <_start-0x40000000>
800001dc:	00030793          	mv	a5,t1
800001e0:	00078513          	mv	a0,a5
800001e4:	00c12403          	lw	s0,12(sp)
800001e8:	01010113          	add	sp,sp,16
800001ec:	00008067          	ret

800001f0 <main>:
800001f0:	fe010113          	add	sp,sp,-32
800001f4:	00112e23          	sw	ra,28(sp)
800001f8:	00812c23          	sw	s0,24(sp)
800001fc:	02010413          	add	s0,sp,32
80000200:	f9dff0ef          	jal	8000019c <AXIGPIO_setInputDataDirection>
80000204:	fc5ff0ef          	jal	800001c8 <AXIGPIO_readData>
80000208:	fea42623          	sw	a0,-20(s0)
8000020c:	00100513          	li	a0,1
80000210:	eadff0ef          	jal	800000bc <_wait_us>
80000214:	fec42503          	lw	a0,-20(s0)
80000218:	f29ff0ef          	jal	80000140 <AXIGPIO_writeData>
8000021c:	fe9ff06f          	j	80000204 <main+0x14>

80000220 <_exception_routine>:
80000220:	7b201073          	csrw	dscratch0,zero
80000224:	342022f3          	csrr	t0,mcause
80000228:	0000006f          	j	80000228 <_exception_routine+0x8>
