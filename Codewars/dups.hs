
module Dups where
import Data.Char

duplicateEncode :: String -> String
duplicateEncode ys = [ if freq x xs > 1 then ')' else '(' | x<- xs ]
            where xs = map toLower ys 

freq::Char->String->Int
freq x xs = length $ filter (==x) xs 