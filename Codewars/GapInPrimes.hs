module GapInPrimes where

gap :: Integer -> Integer -> Integer -> Maybe (Integer, Integer)
gap g m n = gapN g s where s = takeWhile (<= n) $ dropWhile (< m) primes


gapN :: Integer -> [Integer] -> Maybe (Integer, Integer)

gapN g [_         ] = Nothing
gapN g (x : y : xs) = if y - x == g then Just (x, y) else gapN g (y : xs)

--primes = f [2..] where f (p : ns) = p : f [n | n <- ns, n `mod` p /= 0]
-- primes m = sieve [2..m]
--     where
--     sieve (p:xs) 
--         | p*p > m = p : xs
--         | otherwise    = p : sieve [x | x <- xs, rem x p > 0]

primes :: [Integer]
primes = 2 : filterMultiples allMultiples [3, 5 ..]
 where
  allMultiples = mergeMultiples $ map multiples primes
  multiples i = map (i *) [i ..]

filterMultiples :: Ord a => [a] -> [a] -> [a]
filterMultiples (f : fs) (x : xs) | f < x     = filterMultiples fs (x : xs)
                                  | f > x     = x : filterMultiples (f : fs) xs
                                  | otherwise = filterMultiples fs xs

merge :: Ord a => [a] -> [a] -> [a]
merge (x : xs) (y : ys) | x < y     = x : merge xs (y : ys)
                        | x > y     = y : merge (x : xs) ys
                        | otherwise = x : merge xs ys

mergeMultiples :: Ord a => [[a]] -> [a]
mergeMultiples ((x : xs) : xss) = x : merge xs (mergeMultiples xss)
