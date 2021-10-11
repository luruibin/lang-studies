module CreatePhoneNumber where

createPhoneNumber :: [Int] -> String
-- Implement createPhoneNumber
createPhoneNumber nums =  let areacode = take 3 strs
                              maincode = take 3 (drop 3 strs)
                              extcode  = drop 7 strs 
                              strs  = concat $map show nums
                          in 
                               "(" ++ areacode ++ ") " ++ maincode ++ "-" ++ extcode     