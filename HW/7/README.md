第八週習題 -- 第三章完成 PC
===
## PC
### 1. Picture
<img src="pc.jpg" alt="PC" title="PC" height="700" />

### 2. Code
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/03/a/PC.hdl

/**
 * A 16-bit counter with load and reset control bits.
 * if      (reset[t] == 1) out[t+1] = 0
 * else if (load[t] == 1)  out[t+1] = in[t]
 * else if (inc[t] == 1)   out[t+1] = out[t] + 1  (integer addition)
 * else                    out[t+1] = out[t]
 */

CHIP PC {
    IN in[16],load,inc,reset;
    OUT out[16];

    PARTS:
    // Put your code here:
    Inc16(in=outX, out=incIn); // incIn = out[t] + 1 
    Mux16(a=outX, b=incIn, sel=inc, out=incOut); // if sel inc == 1, incOut = incIn, else incOut = out[t]
    Mux16(a=incOut, b=in, sel=load, out=regOut); // if sel load == 1, regOut = input, else regOut = incOut
    Mux16(a=regOut, b=false, sel=reset, out=finOut); // if sel reset == 1, set output into zero, else output = regOut
    Register(in=finOut, load=true, out=out, out=outX); // clock function
}
```
