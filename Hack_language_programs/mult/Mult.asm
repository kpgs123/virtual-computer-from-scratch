@2	// set the value of 0th RAM register to 0 for storing mult value 
M=0

(LOOP)
	@1	// check if the all the iterations are done
	D=M
	@END
	D;JEQ
	
	@0	// add the value at 0 th RAM register value to D register value and store it in the D register
	D=M
	@2
	M=M+D
	
	@1	// decrement the value at 1 th RAM register
	M=M-1
	
	@LOOP	// Jump to the start of the loop
	0;JMP
	
(END)
	@END	// An infinite loop after the program is done
	0;JMP
	
