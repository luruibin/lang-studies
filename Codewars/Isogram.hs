-- An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

module Isogram where
import Data.Char

isIsogram :: String -> Bool

isIsogram []  = True
isIsogram ss  = 
            if length( filter (== x ) lst  ) > 1 
            then False 
            else isIsogram $ tail lst
            where lst = map toLower ss
                  x = head lst 
                      
       
