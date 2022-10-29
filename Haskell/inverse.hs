isEmpty :: [Char] -> Bool

isEmpty lc = null lc

konso :: Char -> [Char] -> [Char]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

inverse :: [Char] -> [Char]

inverse lc 
    | isEmpty lc = []
    | otherwise =
        konso (last lc) (inverse (init lc))