
elf/test_04.elf:     file format elf32-littleriscv


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
800000cc:	fe010113          	add	sp,sp,-32
800000d0:	00112e23          	sw	ra,28(sp)
800000d4:	00812c23          	sw	s0,24(sp)
800000d8:	02010413          	add	s0,sp,32
800000dc:	f9dff0ef          	jal	80000078 <AXIGPIO_setInputDataDirection>
800000e0:	fc5ff0ef          	jal	800000a4 <AXIGPIO_readData>
800000e4:	fea42623          	sw	a0,-20(s0)
800000e8:	fe042423          	sw	zero,-24(s0)
800000ec:	fec42783          	lw	a5,-20(s0)
800000f0:	00a7f793          	and	a5,a5,10
800000f4:	fe0786e3          	beqz	a5,800000e0 <main+0x14>
800000f8:	01b00793          	li	a5,27
800000fc:	fef42423          	sw	a5,-24(s0)
80000100:	fe1ff06f          	j	800000e0 <main+0x14>
