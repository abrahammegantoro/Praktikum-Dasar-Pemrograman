konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

fDeretTujuh :: Int -> Int
-- fDeretTujuh m menerima sebuah integer m yang lebih besar dari 0 
-- dan menghasilkan bilangan integer yang menyatakan elemen ke-m pada pola
-- bilangan deret segi tujuh

-- REALISASI
fDeretTujuh m 
    | m == 1 = 1
    | otherwise = 5*(m-1) + 1 + fDeretTujuh (m-1)

fDeretTujuhList :: Int -> Int -> [Int]
{- fDeretTujuhList (d,e) menerima 2 buah input integer d dan e dan menghasilkan sebuah list berisi nilai deretTujuh dari antara 2 integer d dan e -}

-- REALISASI
fDeretTujuhList d e
    | e < d = []
    | otherwise = konso (fDeretTujuh d) (fDeretTujuhList (d+1) e)

