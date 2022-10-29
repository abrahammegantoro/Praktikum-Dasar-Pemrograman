module OffsetList where
    plus2 :: Int -> Int

    plus2 a = a + 2

    minus1 :: Int -> Int

    minus1 a = a - 1

    offKond :: Int -> Int

    offKond a
        | a >= 0 && a <= 40 = 10
        | a > 40 = 5
        | otherwise = 0

    isEmpty :: [Int] -> Bool 

    isEmpty li = null li

    konso :: Int -> [Int] -> [Int]

    konso e l = [e] ++ l

    offsetList :: [Int] -> (Int->Int) -> [Int]
    
    offsetList li offset =
        if isEmpty li then [] -- Basis
        else -- Rekurens
            konso (offset (head li)) (offsetList (tail li) offset)

