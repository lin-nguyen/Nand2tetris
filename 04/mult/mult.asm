// R2 = R1*R0
@R16    // address = 16
M=0  // RAM[16] = 0
@R2  //sum 
M=0  // RAM[2] = 0

@R1  // 
D=M  // D = RAM[1]
@R3  
M=D  // RAM[3] = D 

(loop)

@R3  
D=M  // D = RAM[3] 
@EXIT 
D;JEQ 
// if D= 0 then jump to EXIT


// R3 i value countdown from R3->0
@R3
D=M  // D = RAM[3]
D=D-1 //D--;
@R3
M=D  // RAM[3] =D

@R0
D=M  // D = RAM[0]
@R2 
M=M+D // RAM[2] = RAM[2] + D

@loop
0;JMP

(EXIT)
@EXIT
0;JMP