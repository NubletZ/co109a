第八週補充習題 -- 撰寫組合語言
===
```
@0 //pointing R0
M=1 //R0 = 1
@0 //line 2 (start loop)
M=M+1 //R0 = R0 + 1
D=M
@2
D;JGT //if D > 0, go to line 2
```
<img src="add.PNG" alt="R0=R0+1" title="R0=R0+1" height="350" />