module Likes where

likes :: [String] -> String
likes str = 
    case n of 
        0 -> "no one likes this  "
        1 -> head str ++  " likes this"
        2 -> head str ++ " and " ++ last str ++ " like this"
        3 -> head str ++ ", " ++ (head.tail) str ++ " and " ++ last str ++ " like this"
        otherwise ->  head str ++ ", " ++ (head.tail) str ++ " and "++ show (n-2)++ " like this"
     where n = length str
