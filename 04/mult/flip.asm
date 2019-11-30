// Signum.asm
@R0
D=M // D = Ram[0]

@8
D;JGT

@R1
M=0
@10
0;JMP

@R1
M=1

@10
0;JMP