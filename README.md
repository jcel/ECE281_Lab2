ECE281_Lab2
===========

##Preliminary Exercise

####Truth Table
|A|B|CI|Z|C0|
|---|---|---|---|---|
|0|0|0|0|0|
|0|1|0|1|0|
|1|0|0|1|0|
|1|1|0|0|1|
|0|0|1|1|0|
|0|1|1|0|1|
|1|0|1|0|1|
|1|1|1|1|1|

####Testbench Picture
![alt text](https://raw2.github.com/jcel/ECE281_Lab2/master/CapturePrelim.PNG "ISE Screen Capture")

####Analysis
Seeing as the testbench image has come up with the exact same results as the expected truth table, it 
is reasonable to assume the code has worked as intended

####Bug Report
After the first attempt, unknown errors were found in syntax checking.  These errors were caused by
having a hyphen character in the file name, leading the program to have different assumtions about the
program.  This was fixed by renaming the files and copying the code over.

##Main Labratory Exercise

####Design Process
My design process was to create the functionality of a single bit adder, and chain the adder 4 times to 
create the full 4 bit adder.  By chaining the carry values, it created a series which added and used the 
carry value to make a full four bit adder.

####Final Schematic
![alt text](https://raw2.github.com/jcel/ECE281_Lab2/master/Four_Final.jpg "Schematic")
