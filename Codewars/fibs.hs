module Fibs where

-- | Returns a pair of consecutive Fibonacci numbers a b,
--   where (a*b) is equal to the input, or proofs that the
--   number isn't a product of two consecutive Fibonacci 
--   numbers.
productFib :: Integer -> (Integer, Integer, Bool)
productFib n = findFibProd n fibs

findFibProd n (x:y:xs) = 
    if x*y < n 
    then findFibProd n (y:xs)
    else (x,y,x*y==n)

fibs = 0:1:zipWith(+) fibs (tail fibs)