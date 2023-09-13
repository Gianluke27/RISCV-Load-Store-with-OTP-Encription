
elf/test_03.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80003137          	lui	sp,0x80003
80000004:	e4010113          	add	sp,sp,-448 # 80002e40 <main+0x2d74>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	04078293          	add	t0,a5,64 # 80000040 <_exit_loop>
80000010:	30529073          	csrw	mtvec,t0
80000014:	800027b7          	lui	a5,0x80002
80000018:	df878313          	add	t1,a5,-520 # 80001df8 <main+0x1d2c>
8000001c:	800027b7          	lui	a5,0x80002
80000020:	20078293          	add	t0,a5,512 # 80002200 <main+0x2134>
80000024:	00028793          	mv	a5,t0
80000028:	df878793          	add	a5,a5,-520
8000002c:	00078293          	mv	t0,a5
80000030:	006282b3          	add	t0,t0,t1
80000034:	098000ef          	jal	800000cc <main>
80000038:	008000ef          	jal	80000040 <_exit_loop>
8000003c:	00000013          	nop

Disassembly of section .text:

80000040 <_exit_loop>:
80000040:	7b201073          	csrw	dscratch0,zero
80000044:	0000006f          	j	80000044 <_exit_loop+0x4>

80000048 <AXIGPIO_writeData>:
80000048:	fe010113          	add	sp,sp,-32
8000004c:	00812e23          	sw	s0,28(sp)
80000050:	02010413          	add	s0,sp,32
80000054:	fea42623          	sw	a0,-20(s0)
80000058:	400007b7          	lui	a5,0x40000
8000005c:	00878293          	add	t0,a5,8 # 40000008 <_start-0x3ffffff8>
80000060:	fec42303          	lw	t1,-20(s0)
80000064:	0062a023          	sw	t1,0(t0)
80000068:	00000013          	nop
8000006c:	01c12403          	lw	s0,28(sp)
80000070:	02010113          	add	sp,sp,32
80000074:	00008067          	ret

80000078 <AXIGPIO_setInputDataDirection>:
80000078:	ff010113          	add	sp,sp,-16
8000007c:	00812623          	sw	s0,12(sp)
80000080:	01010413          	add	s0,sp,16
80000084:	400007b7          	lui	a5,0x40000
80000088:	00478293          	add	t0,a5,4 # 40000004 <_start-0x3ffffffc>
8000008c:	fff00313          	li	t1,-1
80000090:	0062a023          	sw	t1,0(t0)
80000094:	00000013          	nop
80000098:	00c12403          	lw	s0,12(sp)
8000009c:	01010113          	add	sp,sp,16
800000a0:	00008067          	ret

800000a4 <AXIGPIO_readData>:
800000a4:	ff010113          	add	sp,sp,-16
800000a8:	00812623          	sw	s0,12(sp)
800000ac:	01010413          	add	s0,sp,16
800000b0:	400002b7          	lui	t0,0x40000
800000b4:	0002a303          	lw	t1,0(t0) # 40000000 <_start-0x40000000>
800000b8:	00030793          	mv	a5,t1
800000bc:	00078513          	mv	a0,a5
800000c0:	00c12403          	lw	s0,12(sp)
800000c4:	01010113          	add	sp,sp,16
800000c8:	00008067          	ret

800000cc <main>:
800000cc:	fd010113          	add	sp,sp,-48
800000d0:	02112623          	sw	ra,44(sp)
800000d4:	02812423          	sw	s0,40(sp)
800000d8:	03010413          	add	s0,sp,48
800000dc:	f9dff0ef          	jal	80000078 <AXIGPIO_setInputDataDirection>
800000e0:	fc5ff0ef          	jal	800000a4 <AXIGPIO_readData>
800000e4:	fea42223          	sw	a0,-28(s0)
800000e8:	fe042023          	sw	zero,-32(s0)
800000ec:	fe442783          	lw	a5,-28(s0)
800000f0:	00f7f713          	and	a4,a5,15
800000f4:	00800793          	li	a5,8
800000f8:	0ef71663          	bne	a4,a5,800001e4 <main+0x118>
800000fc:	fc042e23          	sw	zero,-36(s0)
80000100:	00000013          	nop
80000104:	fdc42703          	lw	a4,-36(s0)
80000108:	00900793          	li	a5,9
8000010c:	fce7cae3          	blt	a5,a4,800000e0 <main+0x14>
80000110:	fe442783          	lw	a5,-28(s0)
80000114:	fef42023          	sw	a5,-32(s0)
80000118:	fe042503          	lw	a0,-32(s0)
8000011c:	f2dff0ef          	jal	80000048 <AXIGPIO_writeData>
80000120:	fe042623          	sw	zero,-20(s0)
80000124:	0440006f          	j	80000168 <main+0x9c>
80000128:	fe042423          	sw	zero,-24(s0)
8000012c:	0240006f          	j	80000150 <main+0x84>
80000130:	00000013          	nop
80000134:	00000013          	nop
80000138:	00000013          	nop
8000013c:	00000013          	nop
80000140:	00000013          	nop
80000144:	fe842783          	lw	a5,-24(s0)
80000148:	00178793          	add	a5,a5,1
8000014c:	fef42423          	sw	a5,-24(s0)
80000150:	fe842703          	lw	a4,-24(s0)
80000154:	3e700793          	li	a5,999
80000158:	fce7dce3          	bge	a5,a4,80000130 <main+0x64>
8000015c:	fec42783          	lw	a5,-20(s0)
80000160:	00178793          	add	a5,a5,1
80000164:	fef42623          	sw	a5,-20(s0)
80000168:	fec42703          	lw	a4,-20(s0)
8000016c:	3e700793          	li	a5,999
80000170:	fae7dce3          	bge	a5,a4,80000128 <main+0x5c>
80000174:	00100793          	li	a5,1
80000178:	fef42023          	sw	a5,-32(s0)
8000017c:	fe042503          	lw	a0,-32(s0)
80000180:	ec9ff0ef          	jal	80000048 <AXIGPIO_writeData>
80000184:	fe042623          	sw	zero,-20(s0)
80000188:	0480006f          	j	800001d0 <main+0x104>
8000018c:	fe042423          	sw	zero,-24(s0)
80000190:	0240006f          	j	800001b4 <main+0xe8>
80000194:	00000013          	nop
80000198:	00000013          	nop
8000019c:	00000013          	nop
800001a0:	00000013          	nop
800001a4:	00000013          	nop
800001a8:	fe842783          	lw	a5,-24(s0)
800001ac:	00178793          	add	a5,a5,1
800001b0:	fef42423          	sw	a5,-24(s0)
800001b4:	fe842703          	lw	a4,-24(s0)
800001b8:	000187b7          	lui	a5,0x18
800001bc:	69f78793          	add	a5,a5,1695 # 1869f <_start-0x7ffe7961>
800001c0:	fce7dae3          	bge	a5,a4,80000194 <main+0xc8>
800001c4:	fec42783          	lw	a5,-20(s0)
800001c8:	00178793          	add	a5,a5,1
800001cc:	fef42623          	sw	a5,-20(s0)
800001d0:	fec42703          	lw	a4,-20(s0)
800001d4:	000187b7          	lui	a5,0x18
800001d8:	69f78793          	add	a5,a5,1695 # 1869f <_start-0x7ffe7961>
800001dc:	fae7d8e3          	bge	a5,a4,8000018c <main+0xc0>
800001e0:	0000006f          	j	800001e0 <main+0x114>
800001e4:	fe442783          	lw	a5,-28(s0)
800001e8:	fef42023          	sw	a5,-32(s0)
800001ec:	fe042503          	lw	a0,-32(s0)
800001f0:	e59ff0ef          	jal	80000048 <AXIGPIO_writeData>
800001f4:	eedff06f          	j	800000e0 <main+0x14>
