delNthElmt :: Int -> [Char] -> [Char]
{- delNthElmt(n,l) menghilangkan elemen ke-n dari l. ​
   Asumsi: n lebih kecil atau sama dengan jumlah elemen l. ​
   l tidak kosong. -}

delNthElmt n l
    | n == 1 = tail l -- basis
    | otherwise = [head l] ++ delNthElmt (n-1) (tail l) -- rekurens