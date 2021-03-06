// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(START)
	@SCREEN
	D=A

	@addr
	M=D

	@KBD
	D=A

	@stop
	M=D

	@SCREEN
	D=A

	@i
	M=D
(ERASE)
	@i
	D=M

	@stop
	D=D-M

	@END_ERASE
	D;JGT

	@addr
	A=M
	M=0

        @i
	M=M+1

	@addr
	M=M+1

	@ERASE
	0;JMP

(END_ERASE)

(KBD_LOOP)
	@KBD
	D=M

	@MAIN
	D;JGT
	
	@KBD_LOOP
	D;JEQ
(MAIN)
	@SCREEN
	D=A

	@addr
	M=D

	@KBD
	D=A

	@stop
	M=D

	@SCREEN
	D=A

	@i
	M=D
(LOOP)
	@i
	D=M

	@stop
	D=D-M

	@END
	D;JGT

	@addr
	A=M
	M=-1

        @i
	M=M+1

	@addr
	M=M+1

	@KBD
	D=M

	@START
	D;JEQ

	@LOOP
	0;JMP
(END)


	@KBD_LOOP
	0;JMP
	


	
	
















