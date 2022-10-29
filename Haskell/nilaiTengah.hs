-- Mencari Nilai Tengah         nilaiTengah(a,b,c)
-- Definisi dan Realisasi
nilaiTengah :: Int -> Int -> Int -> Int
nilaiTengah a b c 
    |(a>b && c>a) || (a<b && a>c) = a
    |(b>a && c>b) || (b>c && a>b) = b
    | otherwise = c