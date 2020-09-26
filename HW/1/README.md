第一章的前六題
===
## 1. NOT
### 1.1. Picture
<img src="Not.jpg" alt="NOT gate" title="NOT gate" height="400" />

### 1.2. Code
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Not.hdl

/**
 * Not gate:
 * out = not in
 */

CHIP Not {
    IN in;
    OUT out;

    PARTS:
    // Put your code here:
    Nand(a=in, b=in, out=out);
}
```

## 2. AND
### 2.1. Picture
<img src="And.jpg" alt="AND gate" title="AND gate" height="400" />

### 2.2. Code
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/And.hdl

/**
 * And gate: 
 * out = 1 if (a == 1 and b == 1)
 *       0 otherwise
 */

CHIP And {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Nand ( a=a, b=b, out=AnandB);
    Not(in=AnandB, out=out);
}
```

## 3. OR
### 3.1. Picture
<img src="Or.jpg" alt="OR gate" title="OR gate" height="400" />

### 3.2. Code
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Or.hdl

 /**
 * Or gate:
 * out = 1 if (a == 1 or b == 1)
 *       0 otherwise
 */

CHIP Or {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a, out=na);
    Not(in=b, out=nb);
    Nand(a=na, b=nb, out=out);
}
```

## 4. XOR
### 4.1. Picture
<img src="Xor.jpg" alt="XOR gate" title="XOR gate" height="400" />

### 4.2. Code
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Xor.hdl

/**
 * Exclusive-or gate:
 * out = not (a == b)
 */

CHIP Xor {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a, out=na);
    Nand(a=na, b=b, out=NAnandB);
    Not(in=b, out=nb);
    Nand(b=nb, a=a, out=AnandNB);
    Nand(a=NAnandB, b=AnandNB, out=out);
}
```

## 5. MUX
### 5.1. Picture
<img src="Mux.jpg" alt="MUX gate" title="MUX gate" height="400" />

### 5.2. Code
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Mux.hdl

/** 
 * Multiplexor:
 * out = a if sel == 0
 *       b otherwise
 */

CHIP Mux {
    IN a, b, sel;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=sel, out=nsel);
    Nand(a=a, b=nsel, out=AnandNSel);
    Nand(a=b, b=sel, out=BnandSel);
    Nand(a=AnandNSel, b=BnandSel, out=out);
}
```

## 6. DMUX
### 6.1. Picture
<img src="Dmux.jpg" alt="DMUX gate" title="DMUX gate" height="400" />

### 6.2. Code
```
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/DMux.hdl

/**
 * Demultiplexor:
 * {a, b} = {in, 0} if sel == 0
 *          {0, in} if sel == 1
 */

CHIP DMux {
    IN in, sel;
    OUT a, b;

    PARTS:
    // Put your code here:
    Not(in=sel, out=nsel);
    And(a=in, b=nsel, out=a);
    And(a=in, b=sel, out=b);
}
```