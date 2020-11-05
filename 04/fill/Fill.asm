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
	@8192 //total repeat for changing the screen (let's call it as (n))
	D=A
	@0
	M=D //put 8192 in R0
	@16384 //the first 16 bits shown in screen
	D=A
	@1
	M=D //put 16384 in R1
	@24576 //place for keyboard input
	D=M
	@14 //pointing line 14
	D;JGT //go to line 14 (change screen to black) if keyboard input != 0
	@26 //pointing line 26
	D;JEQ //go to line 26 (change screen to white) if keyboard input == 0 (no input)
	@1 //start the BLACK screen program (line 14)
	A=M //go to register M (arr screen)
	M=-1 //change the value to -1 (change the screen to black)
	@1 //go to R1
	M=M+1 //add R1 value by 1
	@0 //goto R0
	M=M-1 //decrease R0 (n) value by 1
	D=M // D = n
	@14
	D;JGT //if n > 0, go to line 14 (continue black screen)
	@0
	D;JLE //else go to line 0 END OF BLACK SCREEN PROGRAM LOOP
	@1 //start the WHITE screen program (line 26)
	A=M
	M=0 //set value to 0 (change the screen to white)
	@1
	M=M+1
	@0
	M=M-1
	D=M
	@26
	D;JGT //if n > 0, go to line 14 (continue white screen)
	@0
	D;JLE //else go to line 0 END OF WHITE SCREEN PROGRAM LOOP