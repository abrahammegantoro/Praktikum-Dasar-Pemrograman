mataUang :: Int -> Int -> Int -> Int -> (Int,Int)
mataUang q d n p = 
    ((q * 25 + d * 10 + n * 5 + p) `div` 100, (q * 25 + d * 10 + n * 5 + p) `mod` 100) 