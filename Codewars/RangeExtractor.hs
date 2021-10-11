module RangeExtractor where
import Data.List 
-- solution :: [Integer] -> String
-- solution lst  = intercalate "," (makeRange lst)

-- makeRange :: [Integer] -> [String]
-- makeRange [] = []
-- makeRange [x] = [show x]
-- makeRange [x,y] = map show [x,y]
-- makeRange [x,y,z] = if x+1 == y && y+1 == z 
--                     then [show x ++"-"++show z]
--                     else map show [x,y,z]
-- makeRange (x:y:z:zs) =  if x+1 == y && y+1 == z 
--                         then makeRange' (x,z) zs
--                         else [show x]++ makeRange (y:z:zs)

-- makeRange' (a,b) nums
--     |  null nums = [show a ++"-"++show b]
--     |  otherwise = let (x:xs) = nums in 
--                    if b+1== x 
--                    then makeRange' (a,x) xs
--                    else [show a ++"-"++show b] ++ makeRange (x:xs)
 
solution :: [Integer] -> String
solution = intercalate "," . map showRange .foldr makeRange2 []
makeRange1 a ((l, h):xs) | l - a == 1 = (a, h):xs
makeRange2 a xs = (a, a):xs
showRange (a, b) = case b - a of
          0 -> show a
          1 -> show a ++ ',' : show b
          _ -> show a ++ '-' : show b