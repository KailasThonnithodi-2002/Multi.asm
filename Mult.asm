// initialise the values
@increment
M=0

@R2
M=0

(LOOP)

    // if increment value if equal to current value; end
    @increment
    D=M
    @R1 
    D=D-M // D = RAM[R1] - RAM[increment]
    @END    
    D;JEQ // if D==0, go to END

    // else, add R0 to R2's stored value
    @R0
    D=M
    @R2
    M=M+D // Scanning register 0 value, then incrementing that value to R2
    @increment 
    M=M+1 // increment = increment + 1

@LOOP
0;JMP

(END)
    @END
    0;JMP

