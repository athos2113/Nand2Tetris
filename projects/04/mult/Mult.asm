// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R0 
D=M
@a
M=D

@R1 
D=M
@b
M=D

@i  
M=1

@product  //product=0
M=0

(LOOP)
@i
D=M
@b
D=D-M
@STOP    
D;JGT

@product
D=M
@a
D=D+M
@product
M=D      

@i
M=M+1   

@LOOP
0;JMP

(STOP)
@product
D=M
@R2
M=D

(END)
@END
0;JMP
