
elf/RISCV_dem_01.elf:     file format elf32-littleriscv


Disassembly of section _start:

80000000 <_start>:
80000000:	80010137          	lui	sp,0x80010
80000004:	80010113          	add	sp,sp,-2048 # 8000f800 <_isr_vector+0xf600>
80000008:	800007b7          	lui	a5,0x80000
8000000c:	20078293          	add	t0,a5,512 # 80000200 <_isr_vector>
80000010:	30529073          	csrw	mtvec,t0
80000014:	1bc000ef          	jal	800001d0 <main>
80000018:	1e8000ef          	jal	80000200 <_isr_vector>
8000001c:	00000013          	nop

Disassembly of section .text:

80000020 <_wait_ms>:
80000020:	fd010113          	add	sp,sp,-48
80000024:	02812623          	sw	s0,44(sp)
80000028:	03010413          	add	s0,sp,48
8000002c:	fca42e23          	sw	a0,-36(s0)
80000030:	fdc42703          	lw	a4,-36(s0)
80000034:	000067b7          	lui	a5,0x6
80000038:	1a878793          	add	a5,a5,424 # 61a8 <_start-0x7fff9e58>
8000003c:	02f707b3          	mul	a5,a4,a5
80000040:	fef42623          	sw	a5,-20(s0)
80000044:	b00022f3          	csrr	t0,mcycle
80000048:	00028713          	mv	a4,t0
8000004c:	fec42783          	lw	a5,-20(s0)
80000050:	00f707b3          	add	a5,a4,a5
80000054:	00028713          	mv	a4,t0
80000058:	00e7fc63          	bgeu	a5,a4,80000070 <_wait_ms+0x50>
8000005c:	b8002373          	csrr	t1,mcycleh
80000060:	b80023f3          	csrr	t2,mcycleh
80000064:	00030713          	mv	a4,t1
80000068:	00038793          	mv	a5,t2
8000006c:	fef70ae3          	beq	a4,a5,80000060 <_wait_ms+0x40>
80000070:	b0002373          	csrr	t1,mcycle
80000074:	00028713          	mv	a4,t0
80000078:	fec42783          	lw	a5,-20(s0)
8000007c:	00f707b3          	add	a5,a4,a5
80000080:	00030713          	mv	a4,t1
80000084:	fef766e3          	bltu	a4,a5,80000070 <_wait_ms+0x50>
80000088:	00000013          	nop
8000008c:	00000013          	nop
80000090:	02c12403          	lw	s0,44(sp)
80000094:	03010113          	add	sp,sp,48
80000098:	00008067          	ret

8000009c <_wait_us>:
8000009c:	fd010113          	add	sp,sp,-48
800000a0:	02812623          	sw	s0,44(sp)
800000a4:	03010413          	add	s0,sp,48
800000a8:	fca42e23          	sw	a0,-36(s0)
800000ac:	fdc42703          	lw	a4,-36(s0)
800000b0:	00070793          	mv	a5,a4
800000b4:	00179793          	sll	a5,a5,0x1
800000b8:	00e787b3          	add	a5,a5,a4
800000bc:	00379793          	sll	a5,a5,0x3
800000c0:	00e787b3          	add	a5,a5,a4
800000c4:	fef42623          	sw	a5,-20(s0)
800000c8:	b00022f3          	csrr	t0,mcycle
800000cc:	00028713          	mv	a4,t0
800000d0:	fec42783          	lw	a5,-20(s0)
800000d4:	00f707b3          	add	a5,a4,a5
800000d8:	00028713          	mv	a4,t0
800000dc:	00e7fc63          	bgeu	a5,a4,800000f4 <_wait_us+0x58>
800000e0:	b8002373          	csrr	t1,mcycleh
800000e4:	b80023f3          	csrr	t2,mcycleh
800000e8:	00030713          	mv	a4,t1
800000ec:	00038793          	mv	a5,t2
800000f0:	fef70ae3          	beq	a4,a5,800000e4 <_wait_us+0x48>
800000f4:	b0002373          	csrr	t1,mcycle
800000f8:	00028713          	mv	a4,t0
800000fc:	fec42783          	lw	a5,-20(s0)
80000100:	00f707b3          	add	a5,a4,a5
80000104:	00030713          	mv	a4,t1
80000108:	fef766e3          	bltu	a4,a5,800000f4 <_wait_us+0x58>
8000010c:	00000013          	nop
80000110:	00000013          	nop
80000114:	02c12403          	lw	s0,44(sp)
80000118:	03010113          	add	sp,sp,48
8000011c:	00008067          	ret

80000120 <AXIGPIO_writeData>:
80000120:	fe010113          	add	sp,sp,-32
80000124:	00812e23          	sw	s0,28(sp)
80000128:	02010413          	add	s0,sp,32
8000012c:	fea42623          	sw	a0,-20(s0)
80000130:	400007b7          	lui	a5,0x40000
80000134:	00878293          	add	t0,a5,8 # 40000008 <_start-0x3ffffff8>
80000138:	fec42303          	lw	t1,-20(s0)
8000013c:	0062a023          	sw	t1,0(t0)
80000140:	00000013          	nop
80000144:	01c12403          	lw	s0,28(sp)
80000148:	02010113          	add	sp,sp,32
8000014c:	00008067          	ret

80000150 <AXIGPIO_ERROR_writeData>:
80000150:	fe010113          	add	sp,sp,-32
80000154:	00812e23          	sw	s0,28(sp)
80000158:	02010413          	add	s0,sp,32
8000015c:	fea42623          	sw	a0,-20(s0)
80000160:	410002b7          	lui	t0,0x41000
80000164:	fec42303          	lw	t1,-20(s0)
80000168:	0062a023          	sw	t1,0(t0) # 41000000 <_start-0x3f000000>
8000016c:	00000013          	nop
80000170:	01c12403          	lw	s0,28(sp)
80000174:	02010113          	add	sp,sp,32
80000178:	00008067          	ret

8000017c <AXIGPIO_setInputDataDirection>:
8000017c:	ff010113          	add	sp,sp,-16
80000180:	00812623          	sw	s0,12(sp)
80000184:	01010413          	add	s0,sp,16
80000188:	400007b7          	lui	a5,0x40000
8000018c:	00478293          	add	t0,a5,4 # 40000004 <_start-0x3ffffffc>
80000190:	fff00313          	li	t1,-1
80000194:	0062a023          	sw	t1,0(t0)
80000198:	00000013          	nop
8000019c:	00c12403          	lw	s0,12(sp)
800001a0:	01010113          	add	sp,sp,16
800001a4:	00008067          	ret

800001a8 <AXIGPIO_readData>:
800001a8:	ff010113          	add	sp,sp,-16
800001ac:	00812623          	sw	s0,12(sp)
800001b0:	01010413          	add	s0,sp,16
800001b4:	400002b7          	lui	t0,0x40000
800001b8:	0002a303          	lw	t1,0(t0) # 40000000 <_start-0x40000000>
800001bc:	00030793          	mv	a5,t1
800001c0:	00078513          	mv	a0,a5
800001c4:	00c12403          	lw	s0,12(sp)
800001c8:	01010113          	add	sp,sp,16
800001cc:	00008067          	ret

800001d0 <main>:
800001d0:	fe010113          	add	sp,sp,-32
800001d4:	00112e23          	sw	ra,28(sp)
800001d8:	00812c23          	sw	s0,24(sp)
800001dc:	02010413          	add	s0,sp,32
800001e0:	f9dff0ef          	jal	8000017c <AXIGPIO_setInputDataDirection>
800001e4:	fc5ff0ef          	jal	800001a8 <AXIGPIO_readData>
800001e8:	fea42623          	sw	a0,-20(s0)
800001ec:	06400513          	li	a0,100
800001f0:	eadff0ef          	jal	8000009c <_wait_us>
800001f4:	fec42503          	lw	a0,-20(s0)
800001f8:	f29ff0ef          	jal	80000120 <AXIGPIO_writeData>
800001fc:	fe9ff06f          	j	800001e4 <main+0x14>

80000200 <_isr_vector>:
80000200:	342022f3          	csrr	t0,mcause
80000204:	7b201073          	csrw	dscratch0,zero
80000208:	00100513          	li	a0,1
8000020c:	f45ff0ef          	jal	80000150 <AXIGPIO_ERROR_writeData>
80000210:	0000006f          	j	80000210 <_isr_vector+0x10>
