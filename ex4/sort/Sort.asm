@R15
D = M
@n
M = D
@R14
D = M
@address
M = D
@i
M = 1


(MAINLOOP)
@n
D = M 
@i
D = D - M
@END 
D; JLT // if i>n goto END
@i
M = M + 1 // i = i + 1
@j
M = 0
@SUBLOOP
0; JMP


(SUBLOOP)
@j 
D = M
@address
D = D + M
A = D
D = M
@tempNum1
M = D
@n
D = M - 1
D = D - 1
@j
D = D - M
@MAINLOOP
D; JLT // if j>n-2 goto MAINLOOP
@j
D = M
@address
D = D + M
A = D + 1
D = M
@tempNum2
M = D
@tempNum1
D = D - M // D == tempNum2 - tempNum1
@STEP
D; JLE // if tempNum2 <= tempNum1 goto SUBLOOP


(SWAP)
@j
D = M
@address
D = D + M
@tempAddress1
M = D
D = D + 1
@tempAddress2
M = D

@tempNum2
D = M 

@tempAddress1
A = M
M = D

@tempNum1
D = M

@tempAddress2
A = M
M = D

(STEP)
@j
M = M + 1 // j = j + 1
@SUBLOOP
0; JMP

(END)
