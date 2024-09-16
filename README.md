# Assignment_1_431

Collaborators: Gabriel Otero, Sam Grigoli

Due: 09/26/2024

Objective: <br/> The purpose of this assignment is to show how to create elementary phrases in OCaml. <br/>
The most important phrases will involve pattern matching and recursion.

Side Notes: <br/>
&emsp;(I.) We must use patter matching and avoid if ... else statements when possible. <br/>
&emsp;(II.) We must run and test the fuctions in VS code of WSL.

Write OCaml code for the following:

&emsp;(1.) A function that takes a list as argument, and that returns the value 1 if the list is empty, the value 2 if the list is of cardinality 1, and the <br/> &emsp; &emsp; value 0 if the list is of cardinality 2 or higher. (hint: use pattern matching)

&emsp;(2.) A function to rotate a list, removing the head element if any, and placing it at the end. <br/> &emsp; &emsp; (hint: use pattern matching, and list concatenation @)

&emsp;(3.) A function to remove the last element in a list, if any. <br/> &emsp; &emsp; (hint: use pattern matching, and possibly the List.rev function that reverses a list)

&emsp;(4.) A function to remove all occurrences of an element y from a list <br/> &emsp; &emsp; (hint: use pattern matching and recursion; if..else may be used too)

&emsp;(5.) A function that counts how many 0 and 1 there are in a list of integers <br/> &emsp; &emsp; (hint: use pattern matching and recursion)

&emsp;(6.) A function, called makepairs, that takes an int x and a list of ints [a;b;c;,…] as arguments, and that produces the list of pairs <br/> &emsp; &emsp; [ (x,a); (x,b); (x,c); ….] 
