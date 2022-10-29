sumIsiList :: [Int] -> Int
{- sumIsiList(l) menghitung hasil penjumlahan dari seluruh 
elemen sebuah list of integer l yang tidak kosong.. -}

-- Realisasi

sumIsiList l
    | length l == 1 = head l -- basis
    | otherwise = head l + sumIsiList (tail l) -- rekurens