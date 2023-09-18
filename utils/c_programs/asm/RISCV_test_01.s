
elf/RISCV_test_01.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80003137          	lui	sp,0x80003
80000004:	e4010113          	add	sp,sp,-448 # 80002e40 <main+0x2d40>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	0f078293          	add	t0,a5,240 # 800000f0 <_exit_loop>
80000010:	30529073          	csrw	mtvec,t0
80000014:	800027b7          	lui	a5,0x80002
80000018:	df878313          	add	t1,a5,-520 # 80001df8 <main+0x1cf8>
8000001c:	800027b7          	lui	a5,0x80002
80000020:	20078293          	add	t0,a5,512 # 80002200 <main+0x2100>
80000024:	00028793          	mv	a5,t0
80000028:	df878793          	add	a5,a5,-520
8000002c:	00078293          	mv	t0,a5
80000030:	006282b3          	add	t0,t0,t1
80000034:	0cc000ef          	jal	80000100 <main>
80000038:	0b8000ef          	jal	800000f0 <_exit_loop>
8000003c:	00000013          	nop

Disassembly of section .text:

80000040 <AXIGPIO_writeData>:
80000040:	fe010113          	add	sp,sp,-32
80000044:	00812e23          	sw	s0,28(sp)
80000048:	02010413          	add	s0,sp,32
8000004c:	fea42623          	sw	a0,-20(s0)
80000050:	400007b7          	lui	a5,0x40000
80000054:	00878293          	add	t0,a5,8 # 40000008 <_start-0x3ffffff8>
80000058:	fec42303          	lw	t1,-20(s0)
8000005c:	0062a023          	sw	t1,0(t0)
80000060:	00000013          	nop
80000064:	01c12403          	lw	s0,28(sp)
80000068:	02010113          	add	sp,sp,32
8000006c:	00008067          	ret

80000070 <AXIGPIO_ERROR_writeData>:
80000070:	fe010113          	add	sp,sp,-32
80000074:	00812e23          	sw	s0,28(sp)
80000078:	02010413          	add	s0,sp,32
8000007c:	fea42623          	sw	a0,-20(s0)
80000080:	410002b7          	lui	t0,0x41000
80000084:	fec42303          	lw	t1,-20(s0)
80000088:	0062a023          	sw	t1,0(t0) # 41000000 <_start-0x3f000000>
8000008c:	00000013          	nop
80000090:	01c12403          	lw	s0,28(sp)
80000094:	02010113          	add	sp,sp,32
80000098:	00008067          	ret

8000009c <AXIGPIO_setInputDataDirection>:
8000009c:	ff010113          	add	sp,sp,-16
800000a0:	00812623          	sw	s0,12(sp)
800000a4:	01010413          	add	s0,sp,16
800000a8:	400007b7          	lui	a5,0x40000
800000ac:	00478293          	add	t0,a5,4 # 40000004 <_start-0x3ffffffc>
800000b0:	fff00313          	li	t1,-1
800000b4:	0062a023          	sw	t1,0(t0)
800000b8:	00000013          	nop
800000bc:	00c12403          	lw	s0,12(sp)
800000c0:	01010113          	add	sp,sp,16
800000c4:	00008067          	ret

800000c8 <AXIGPIO_readData>:
800000c8:	ff010113          	add	sp,sp,-16
800000cc:	00812623          	sw	s0,12(sp)
800000d0:	01010413          	add	s0,sp,16
800000d4:	400002b7          	lui	t0,0x40000
800000d8:	0002a303          	lw	t1,0(t0) # 40000000 <_start-0x40000000>
800000dc:	00030793          	mv	a5,t1
800000e0:	00078513          	mv	a0,a5
800000e4:	00c12403          	lw	s0,12(sp)
800000e8:	01010113          	add	sp,sp,16
800000ec:	00008067          	ret

800000f0 <_exit_loop>:
800000f0:	7b201073          	csrw	dscratch0,zero
800000f4:	00100513          	li	a0,1
800000f8:	f79ff0ef          	jal	80000070 <AXIGPIO_ERROR_writeData>
800000fc:	0000006f          	j	800000fc <_exit_loop+0xc>

80000100 <main>:
80000100:	81010113          	add	sp,sp,-2032
80000104:	7e812623          	sw	s0,2028(sp)
80000108:	7f010413          	add	s0,sp,2032
8000010c:	83010113          	add	sp,sp,-2000
80000110:	fe042623          	sw	zero,-20(s0)
80000114:	fe042623          	sw	zero,-20(s0)
80000118:	00100793          	li	a5,1
8000011c:	fef42423          	sw	a5,-24(s0)
80000120:	0300006f          	j	80000150 <main+0x50>
80000124:	fffff7b7          	lui	a5,0xfffff
80000128:	ff078793          	add	a5,a5,-16 # ffffeff0 <main+0x7fffeef0>
8000012c:	00878733          	add	a4,a5,s0
80000130:	fe842783          	lw	a5,-24(s0)
80000134:	00279793          	sll	a5,a5,0x2
80000138:	00f707b3          	add	a5,a4,a5
8000013c:	fe842703          	lw	a4,-24(s0)
80000140:	04e7aa23          	sw	a4,84(a5)
80000144:	fe842783          	lw	a5,-24(s0)
80000148:	00178793          	add	a5,a5,1
8000014c:	fef42423          	sw	a5,-24(s0)
80000150:	fe842703          	lw	a4,-24(s0)
80000154:	3e800793          	li	a5,1000
80000158:	fce7d6e3          	bge	a5,a4,80000124 <main+0x24>
8000015c:	00100793          	li	a5,1
80000160:	fef42223          	sw	a5,-28(s0)
80000164:	0380006f          	j	8000019c <main+0x9c>
80000168:	fffff7b7          	lui	a5,0xfffff
8000016c:	ff078793          	add	a5,a5,-16 # ffffeff0 <main+0x7fffeef0>
80000170:	00878733          	add	a4,a5,s0
80000174:	fe442783          	lw	a5,-28(s0)
80000178:	00279793          	sll	a5,a5,0x2
8000017c:	00f707b3          	add	a5,a4,a5
80000180:	0547a783          	lw	a5,84(a5)
80000184:	fec42703          	lw	a4,-20(s0)
80000188:	00f707b3          	add	a5,a4,a5
8000018c:	fef42623          	sw	a5,-20(s0)
80000190:	fe442783          	lw	a5,-28(s0)
80000194:	00178793          	add	a5,a5,1
80000198:	fef42223          	sw	a5,-28(s0)
8000019c:	fe442703          	lw	a4,-28(s0)
800001a0:	3e800793          	li	a5,1000
800001a4:	fce7d2e3          	bge	a5,a4,80000168 <main+0x68>
800001a8:	f6dff06f          	j	80000114 <main+0x14>
