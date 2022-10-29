countFactorOfX :: Int -> [Int] -> Int
{- countFactorOfX n l mengembalikan banyaknya kemunculan ​
   bilangan yang merupakan faktor dari n pada l -}

isEmpty :: [Int] -> Bool
    -- isEmpty untuk mengecek apakah list kosong atau tidak

-- Realisasi
isEmpty = null

countFactorOfX n k
    | isEmpty k = 0 -- basis
    | otherwise =   -- rekurens
        if  mod n (head k) == 0 then
            1 + countFactorOfX n (tail k)
        else countFactorOfX n (tail k)