// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(LOOP)
	@SCREEN
	D=A
	@R0
	M=D

	(SCREENLOOP)
		@R0
		M=M+1

		@KBD
		D=M

		@WHITE
		D;JEQ

		(BLACK)
		@R0
		A=M
		M=1
		@END
		0;JEQ

		(WHITE)
		@R0
		A=M
		M=0

		(END)
		@R0
		D=M
		@KBD
		D=D-M
		@SCREENLOOP
		D;JNE
		@LOOP
		D;JEQ
	@R0
	D=M
	@KBD
	D=D-A
	@SCREENLOOP
	D;JNE
	@LOOP
	D;JEQ

@LOOP
0;JEQ