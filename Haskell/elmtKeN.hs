isEmpty :: [Int] -> Bool 
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

elmtKeN :: [Int] -> Int -> Int 
elmtKeN l n
    | n == 1 = head l
    | otherwise = elmtKeN (tail l) (n-1)