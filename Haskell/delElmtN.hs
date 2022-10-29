konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

delElmtN :: [Int] -> Int -> [Int]

delElmtN l n
    | isEmpty l = []
    | otherwise =
        if head l == n then delElmtN (tail l) n
        else konso (head l) (delElmtN (tail l) n)
