module DivideInto where

import Data.List

divideInto :: Int -> [a] -> [[a]]
divideInto n xs = split (((length xs) + n - 1) `div` n) xs

split :: Int -> [a] -> [[a]]
split m = unfoldr phi
  where
    phi [] = Nothing
    phi xs = Just $ splitAt m xs
