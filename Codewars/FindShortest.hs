module FindShortest where
import           Data.List
find_shortest :: String -> Integer

--findShortest  =   toInteger. minimum . map length . words 

--find_shortest = toInteger . minimum . (length <$>) . words

find_shortest str = minimum (map (toInteger . length) $ words str)
