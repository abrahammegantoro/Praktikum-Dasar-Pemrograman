isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

getSmallest :: [Int] -> Int

getSmallest l 
    | isOneElmt l = head l
    | otherwise = 
        if head l <= getSmallest (tail l) then head l
        else getSmallest (tail l)