// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

// CAN'T DO AN OPERATION BETWEEN A AND M
@R2
M=0

@R1
D=M
@R3
M=D

@END
D;JLE

(LOOP)
	@R0
	D=M

	@R2
	M=M+D

	@R3
	M=M-1

	D=M
	@LOOP
	D;JGT
(END)
	@END
	0;JMP