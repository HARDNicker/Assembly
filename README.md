# Assembler Problem Collection.

I am a student, and this is a repository of lab work that I have been doing. I have not changed anything in the code so that you can track my progress in learning assembler. You will find a list of the assignments in the README file to make it easier for you to navigate the files.

### NOTE
The code is written in VisualStudio;
Some code is not exactly optimized and optimal, but it works). 

## The simplest programs in Assembler
Labs 1:

Tasks:

First file :
Three numbers are given.
Increase the first number by half, decrease the second number by 3, square the third number, and then find the sum of the new three numbers;

Second file :
There are three variables a, b, and c. Change the values of these variables so that a stores the value of a+b, b stores the difference of the old values of c-a, and c stores the sum of the old values of a+b+c. 
For example, a=0, b=2, c=5, then the new values are a=2, b=5 and c=7;
   
 ----------------------------------------------------------------------------------------------------------------------------------------------------------
 ## Conditional transitions in Assembler
Labs 2: 

Tasks:

First file : 
From the three given numbers choose the smallest one;

Second file :
Given three numbers. Find the sum of the two largest of them;

----------------------------------------------------------------------------------------------------------------------------------------------------------
## Cycles in Assembler
Labs 3:

Tasks:

First file :
A natural number n is given. 
Write a program that outputs the product of the first N even natural numbers;

Second file :
Given two integers A,B (A<B). 
Find the sum of integers A through B that are divisible by four but not divided by six;

 ----------------------------------------------------------------------------------------------------------------------------------------------------------
 ## Subprograms
Labs 4:

Tasks:  	

First file : Find the smallest number out of five given numbers;

Second file : Write a subroutine that calculates the value of the function f(x) = 2x^3 - 9x^2 + 16. Calculate 2f(x1) + f(x2);

 ----------------------------------------------------------------------------------------------------------------------------------------------------------
 ## Arrays and strings
Labs 5:

Tasks: 

First file : An integer array is given. Find the number of numbers in the array that are divisible by 3 but are not divisible by 7;

Second file : The string a is given. Get the string b, which is obtained from the string a, if it is copied three times.

 ----------------------------------------------------------------------------------------------------------------------------------------------------------
 ## Data input and output
Labs 6:

Tasks:

First file :  Suppose an array of 5 elements in binary format. 
 Output to the console the sum of the array elements in decimal format.
 
 ----------------------------------------------------------------------------------------------------------------------------------------------------------
 ## The challenges of cryptography
Labs 7:

The code is written in the 8086 emulator;

Tasks:

First file : The shuffle cipher - rearranges the characters of the original message. Write a program to encrypt and decrypt data using the permutation method according to the following rule: in each byte of the sequence first 1 and 3 bits are permuted, then 4 and 7 bits. Write a program for decryption.

Second file : Gamma cipher. When using gamification, the source bytes are added modulo 2 to a given sequence of bytes, which is called a gamma.
Write programs that perform encryption and decryption using the gamma method with a given gamma.

Third file : A pseudo-random sequence, which is generated based on a given initial number, is often used as a gamut. One possible formula for generating such a sequence: ![image](https://user-images.githubusercontent.com/122534600/212536666-9d2438e5-17eb-4eab-bd21-b9a4f0da88ab.png)

where m-modulus (m>0), a-multiplier (0≤a<m), c-increment (0≤c<m). The initial number X0 is chosen arbitrarily. Write a program for encryption by gammation with pseudorandom sequence.

 ----------------------------------------------------------------------------------------------------------------------------------------------------------
