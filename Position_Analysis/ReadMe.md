The function duty is to find the unknown values in the 3x3 given matrix
and return a fully valued matrix


**Parameters**: 

1) 3x3 matrix  
2)symbolics of unkown values in a vector form

**Usage:**
```matlab
symbolic_vector = [ symbolics ]
completePos(matrix_,symbolic_vector)
```

Example:
```matlab
syms nx nz oy oz ax ay
symbolic_vector = [nx nz oy oz ax ay]
matrix = [nx 0 ax; 0.707 oy ay; nz oz 0]
m=completePos(matrix, symbolic_vector)
```
