@r4 keeping as working index i goes from 0 to r3-2
@r5 number at index i = value of r4[r2]
@r6 number at index i+1 = value of (r4+4)[r2]
@r7 is the flag for bubblesort which tells whether swap happened or not

.swap:
@I will swap the numbers at r4+r0 and r4+4+r0
	mov r7,1
	add r0,r0,r4
	ld r5,[r0]
	add r0,r0,4
	ld r6,[r0]
	st r5, [r0]
	sub r0,r0,4
	st r6, [r0]
	sub r0,r0,r4
	ret


.bubblesort:


		@ ADD YOUR CODE HERE


.main:

	@ Loading the values as an array into the registers
	mov r0, 0    
	mov r1, 12	@ replace 12 with the number to be sorted
	st r1, 0[r0]
	mov r1, 7	@ replace 7 with the number to be sorted
	st r1, 4[r0]
	mov r1, 11  @ replace 11 with the number to be sorted
	st r1, 8[r0]
	mov r1, 9   @ replace 9 with the number to be sorted
	st r1, 12[r0]
	mov r1, 3   @ replace 3 with the number to be sorted
	st r1, 16[r0]
	mov r1, 15  @ replace 15 with the number to be sorted
	st r1, 20[r0]
	@ EXTEND ON SIMILAR LINES FOR MORE NUMBERS

	mov r2, 0       @ Starting address of the array
	
	@ Retreive the end address of the array
	mov r3, 6	@ REPLACE 6 WITH N, where, N is the number of numbers being sorted
	
	@ ADD YOUR CODE HERE
	mov r4, 0

	call .swap



@	@call .bubblesort
	
	@ ADD YOUR CODE HERE

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

