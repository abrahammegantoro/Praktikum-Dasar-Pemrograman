module PersamaanKuadrat where
    -- DEFINISI dan SPESIFIKASI
    persamaanKuadrat :: Int -> Int -> Int -> Int -> Int
        -- persamaanKuadrat(a,b,c,x) menghitung hasil persamaan kuadrat a*x^2+b*x+c
        -- merupakan bilangan integer

    -- REALISASI
    persamaanKuadrat a b c x =
        a * x * x + b * x + c

    -- Contoh Aplikasi
    -- persamaanKuadrat 1 2 3 4