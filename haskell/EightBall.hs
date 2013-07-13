import DivideInto

solve xs = solve' $ divideInto 3 (zip (iterate (+1) 0) xs)

solve' [[(i, _)]] = i
solve' (x1:x2:x3) = solve' $ divideInto 3 p
  where
    p = case compare (sum $ snd $ unzip x1) (sum $ snd $ unzip x2) of
          GT -> x1
          LT -> x2
          EQ -> head x3

main = do
  putStrLn $ show $ solve [7,5,5,5,5,5,5,5]
  putStrLn $ show $ solve [5,7,5,5,5,5,5,5]
  putStrLn $ show $ solve [5,5,7,5,5,5,5,5]
  putStrLn $ show $ solve [5,5,5,7,5,5,5,5]
  putStrLn $ show $ solve [5,5,5,5,7,5,5,5]
  putStrLn $ show $ solve [5,5,5,5,5,7,5,5]
  putStrLn $ show $ solve [5,5,5,5,5,5,7,5]
  putStrLn $ show $ solve [5,5,5,5,5,5,5,7]
