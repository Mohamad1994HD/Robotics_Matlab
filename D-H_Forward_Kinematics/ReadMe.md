The function will obtain forward kinematics using Denevit hartenberg representation
it requires the parameters table entered _theta_i,d_i,a_i,alpha_i_
**Usage**
```matlab
syms t1 t2 d1 d2 a1 a2 al1 al2
M=[t1 d1 a1 al1; t2 d2 a2 al2]

kine_forwards(M)

%_OR_

kine_forwards_m(M) % another implementation
```
