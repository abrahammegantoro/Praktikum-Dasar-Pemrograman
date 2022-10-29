module HitungBensin where
    hitungBensin :: Int -> Int -> Int
    hitungBensin a b 
        | b == 1 && a == 1 = 0 
        | a>b = hitungBensin b a
        | a<b = hitungBensin a a + hitungBensin (a+1) b
        | mod a 2 == 1 = 1 + hitungBensin (3*a+1) (3*a+1)
        | otherwise = 1 + hitungBensin (div a 2) (div a 2)