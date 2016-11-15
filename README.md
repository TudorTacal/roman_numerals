This program is part of the daily katas from week2 at Makers Academy.

# Roman Numerals

The Romans wrote their numbers using letters; specifically the letters:

* 'I' meaning '1'
* 'V' meaning '5'
* 'X' meaning '10'
* 'L' meaning '50'
* 'C' meaning '100'
* 'D' meaning '500'
* 'M' meaning '1000'

## The Rules:

* The symbols 'I', 'X', 'C', and 'M' can be repeated at most 3 times in a row.
* The symbols 'V', 'L', and 'D' can never be repeated.
* The '1' symbols ('I', 'X', and 'C') can only be subtracted from the 2 next highest values ('IV' and 'IX', 'XL' and 'XC', 'CD' and 'CM').
* Only one subtraction can be made per numeral ('XC' is allowed, 'XXC' is not).
* The '5' symbols ('V', 'L', and 'D') can never be subtracted.

Steps to approach the problem.
1. Create an hash with the numerals.
2. The program must transform a normal number into a roman numeral.
3. The number must be deconstructed after some rules so that we know how to associate it to the proper numeral.
4. s
#{ :I => 1,:V => 5, :X => 10, :L => 50, :C => 100, :D => 500, :M => 1000}
