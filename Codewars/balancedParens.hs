
balancedParens :: Int -> [String]
balancedParens 0 = [""]
balancedParens 1 = ["()"]
balancedParens n = pa ++ pb
                    where   p= balancedParens (n-1)
                            pa = map (\x-> "("++ x ++  ")") p
                            pb = map ("()" ++ ) p 
          
-- TODO: Program me