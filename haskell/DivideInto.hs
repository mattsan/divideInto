module DivideInto where

divideInto :: Int -> [a] -> [[a]]
divideInto n xs = split (((length xs) + n - 1) `div` n) xs

split :: Int -> [a] -> [[a]]
split _ [] = []
split m xs = xs1:(split m xs2)
  where
    (xs1, xs2) = splitAt m xs
