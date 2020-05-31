@R13
D = M
@a
M = D

@R14
D = M
@b
M = D

@result
M = 0

@multiple
M = 1

(IS_A_SMALLER_THAN_B)
@a
D = M
@b
D = D - M
@MULTIPLY_BY_2
D; JGT // if b < a then goto MULTIPLY_BY_2
@UPDATE_ANSWER_PART_1
0; JMP

(MULTIPLY_BY_2)
@b
M = M<<
@multiple
M = M<<
@IS_A_SMALLER_THAN_B
0; JMP

(UPDATE_ANSWER_PART_1)
@a
D = M
@b
D = D - M
@UPDATE_ANSWER_PART_2
D; JGE
@DIVIDE_BY_2
0; JMP

(UPDATE_ANSWER_PART_2)
@b
D = M
@a
M = M - D
@multiple
D = M
@result
M = M + D

(DIVIDE_BY_2)
@b
M = M>>
@multiple
M = M>>

D = M
@UPDATE_ANSWER_PART_1
D; JNE // if multiple != 0 then goto UPDATE_ANSWER_PART_1

(END)
@result
D = M
@R15
M = D



