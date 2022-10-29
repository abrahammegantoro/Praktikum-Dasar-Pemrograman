module Max3 where
    -- DEFINISI dan SPESIFIKASI
    max3 :: Int -> Int -> Int -> Int
        -- max3(a,b,c) mencari nilai maksimum dari ketiga bilangan a b c
        -- merupakan bilangan integer

    -- Realisasi
    max3 a b c
      | a>b && a>c = a
      | b>a && b>c = b
      | otherwise = c

    -- Contoh aplikasi
    -- max3 2 3 4