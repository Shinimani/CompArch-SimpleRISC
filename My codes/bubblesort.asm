@r0 keeping as working index i goes from 0 to r3-2
@r5 number at index i = value of r4[r2]
@r6 number at index i+1 = value of (r4+4)[r2]
@r7 is the flag for bubblesort which tells whether swap happened or not

.swap:
@I will swap the numbers at r0 and 4+r0
	mov r7,1
	ld r5,[r0]
	add r0,r0,4
	ld r6,[r0]
	st r5, [r0]
	sub r0,r0,4
	st r6, [r0]
	ret
/*
.bubblesort:
	sub r3,r3,2
	cmp r4,r3
	add r3,r3,2
	beq .endOfArray
	b .continue
	.endOfArray:
	cmp c7,0
	beq ret
	mov r4,0
	b .continue

	.continue:
*/	

.bubblesort:
	.atStart: 
	mov r7,0
	mov r4,0
	.loop:
		mov r0,r4
		ld r5,[r0]
		add r0,r0,4
		ld r6,[r0]
		sub r0,r0,4
		cmp r5,r6
		bgt .sw
		b .continue
		.sw:
			mov r7,1
			ld r5,[r0]
			add r0,r0,4
			ld r6,[r0]
			st r5, [r0]
			sub r0,r0,4
			st r6, [r0]
	.continue:
	add r4,r4,4
	div r4,r4,4
	sub r3,r3,1
	cmp r4,r3
	add r3,r3,1
	mul r4,r4,4
	beq .endOfArray
	b .loop
	.endOfArray:
		cmp r7,1
		beq .atStart
		b .end
	.end:	

	ret
		@ ADD YOUR CODE HERE




.main:

	@ Loading the values as an array into the registers
	mov r0, 0    
	mov r1, 71	@ replace 12 with the number to be sorted
	st r1, 0[r0]
	mov r1, 61 @ replace 7 with the number to be sorted
	st r1, 4[r0]
	mov r1, 51  @ replace 11 with the number to be sorted
	st r1, 8[r0]
	mov r1, 41   @ replace 9 with the number to be sorted
	st r1, 12[r0]
	mov r1, 31   @ replace 3 with the number to be sorted
	st r1, 16[r0]
	mov r1, 21  @ replace 15 with the number to be sorted
	st r1, 20[r0]

	mov r2, 0       @ Starting address of the array
	
	@ Retreive the end address of the array
	mov r3, 6	@ REPLACE 6 WITH N, where, N is the number of numbers being sorted
	
	@ ADD YOUR CODE HERE
	


	call .bubblesort
	
	@ ADD YOUR CODE HERE

	mov r0,0
	@ Print statements
	ld r1, 0[r0]
	.print r1
	ld r1, 4[r0]
	.print r1
	ld r1, 8[r0]
	.print r1
	ld r1, 12[r0]
	.print r1
	ld r1, 16[r0]
	.print r1
	ld r1, 20[r0]
	.print r1
	@ EXTEND ON SIMILAR LINES FOR MORE NUMBERS

	