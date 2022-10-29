module NbKelipatanX where
    nbKelipatanX :: Int -> Int -> Int -> Int
    nbKelipatanX m n x
        | n < m = 0
        | mod n x == 0 = nbKelipatanX m (n-1) x + 1
        | otherwise = nbKelipatanX m (n-1) x

