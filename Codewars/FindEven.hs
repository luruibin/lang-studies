module FindEven where
import Data.List

findEvenIndex :: [Int] -> Int
findEvenIndex = evenArrays []  
   
evenArrays::[Int]->[Int]->Int
evenArrays arr [] = if sum arr == 0 then length arr + 1 else (-1)
evenArrays arr (x:xs)  =  
            if sum xs == sum arr 
            then length arr 
            else evenArrays (arr++[x]) xs 