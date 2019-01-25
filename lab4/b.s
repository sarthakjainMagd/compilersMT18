@ picoPascal compiler output
	.include "fixup.s"
	.global pmain

	.text
pmain:
	mov ip, sp
	stmfd sp!, {r4-r10, fp, ip, lr}
	mov fp, sp
@   for i := 1 to 3 do
	mov r0, #1
	set r1, _i
	str r0, [r1]
	mov r5, #3
.L4:
	set r0, _i
	ldr r0, [r0]
	cmp r0, r5
	bgt .L2
@     for j:= 7 to 8 do
	mov r0, #7
	set r1, _j
	str r0, [r1]
	mov r4, #8
.L6:
	set r6, _j
	ldr r7, [r6]
	cmp r7, r4
	bgt .L7
@ 	print_num(j);
	mov r0, r7
	bl print_num
@     	newline();
	bl newline
@ 	print_num(999);
	set r0, #999
	bl print_num
@         newline()	
	bl newline
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b .L6
.L7:
@     print_num(i);
	set r6, _i
	ldr r0, [r6]
	bl print_num
@     newline();
	bl newline
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b .L4
.L2:
	ldmfd fp, {r4-r10, fp, sp, pc}
	.ltorg

	.comm _i, 4, 4
	.comm _j, 4, 4
	.data
g1:
	.byte 73, 32, 119, 105, 108, 108, 32, 110, 111, 116
	.byte 32, 98, 101, 32, 112, 114, 105, 110, 116, 101
	.byte 100, 32, 105, 102, 32, 99, 111, 110, 116, 105
	.byte 110, 117, 101, 32, 119, 111, 114, 107, 115
	.byte 0
@ End
