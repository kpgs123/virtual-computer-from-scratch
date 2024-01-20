// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@SCREEN
D=A
@address
M=D
@8192
D=A
@size
M=D

(LOOP)
  @i
  M=0
  @KBD
  D=M
  @FUNC1
  D;JEQ
  @FUNC2
  0;JMP
  
(FUNC1)
  @address
  D=M
  @i
  A=D+M
  M=0
  @i
  M=M+1
  D=M
  @size
  D=D-M
  @LOOP
  D;JGE
  @FUNC1
  0;JMP
  
(FUNC2)
  @address
  D=M
  @i
  A=D+M
  M=-1
  @i
  M=M+1
  D=M
  @size
  D=D-M
  @LOOP
  D;JGE
  @FUNC2
  0;JMP
