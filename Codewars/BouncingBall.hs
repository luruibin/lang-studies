module Codewars.Kata.BouncingBall where

bouncingBall :: Double -> Double -> Double -> Integer

bouncingBall h b w 
    | h < 0  = -1
    | b <=0 || b >= 1 = -1
    | h <= w  = -1 
    | otherwise = if h*b > w 
                  then 2+ bouncingBall (h*b) b w
                  else 1
