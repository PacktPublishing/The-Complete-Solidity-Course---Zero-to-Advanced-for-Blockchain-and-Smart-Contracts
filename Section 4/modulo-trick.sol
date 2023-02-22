/*
THE MODULO CALCULATION TRICK (finding the remainder)

    1. divide the dividend (first number) by the divisor (second number)
    2. disregard the fraction in the result.
    3. multiply the result (quotient) by the divisor (second number)
    4. subtract the new result from the divident (first number)
    
    A. 12 % 23 - the goal is to find the remainder 
    1. dividend = 12, divisor = 23 
    2. q = 12 / 23, q = 0 
    3. 0 * 23 = 0, newResult = 0 
    4. R = 12 - 0, R = 12 
    
    
    
    B. 112 % 35 = R 
    1. dividend = 112, divisor = 35 
    2. q = 3
    3.  newResult = 3 * 35, newResult = 105 
    4. R = 112 - 105, R = 7 


    Start by choosing the initial number (before performing the modulo operation). 
    Let's say it is 250. This is our dividend.
    Choose the divisor. Let's pick 24. The operation we want to calculate is then 
    250 mod 24 (250 % 24 if using different convention).
    Divide one number by the other, rounding down: 250 / 24 = 10. T
    his is the quotient. Also, you can think of that operation as an integer division - 
    the type of the division, where we don't care about the fractional part of the result.
    Multiply the divisor by the quotient. So it's 10 * 24 = 240 in our example.
    Subtract this number from your initial number (dividend). Here: 250 - 240 = 10.
    The number you obtain is the result of the modulo operation. We can write it down as 250 mod 24 = 10.
*/