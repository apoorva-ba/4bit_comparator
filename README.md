# 4bit_comparator
Verilog implementation and functional verification of 4bit comparator using a testbench and waveform.


## Objective
- Design a 4-bit Comparator using Verilog HDL.
- Verify the design using a testbench.
- Generate simulation waveforms using a VCD dump file.
- Simulate the design in EDA Playground and analyze the waveform using GTKWave.


## Inputs

| Signal | Width | Description |
|--------|-------|-------------|
| A | 4-bit | First input number |
| B | 4-bit | Second input number |

---

## Outputs

| Signal | Description |
|--------|-------------|
| A_greater | High when A > B |
| A_equal | High when A = B |
| A_less | High when A < B |

---

## Truth Table

| Condition | A_greater | A_equal | A_less |
|-----------|-----------|----------|--------|
| A > B | 1 | 0 | 0 |
| A = B | 0 | 1 | 0 |
| A < B | 0 | 0 | 1 |


## Test Cases

| A | B | Expected Result |
|---|---|-----------------|
| 0011 | 0010 | A > B |
| 0101 | 0101 | A = B |
| 0010 | 1001 | A < B |
| 1111 | 0111 | A > B |
| 0000 | 0000 | A = B |
| 0110 | 1110 | A < B |

---

## Expected Output

text
Time    A      B      A>B A=B A<B
0       0011   0010    1   0   0
10      0101   0101    0   1   0
20      0010   1001    0   0   1
30      1111   0111    1   0   0
40      0000   0000    0   1   0
50      0110   1110    0   0   1

##Author 
- Apoorva B A
- ECE Student
