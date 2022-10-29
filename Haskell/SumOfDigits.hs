module SumOfDigits where
    -- Definisi dan Spesifikasi
    sumOfDigits :: Int -> Int
        -- sumOfDigits n menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
        -- prekondisi n >= 0
    
    -- Realisasi
    sumOfDigits n =
        if n >= 0 && n<= 9 then n
        else sumOfDigits (n `div` 10) + sumOfDigits (n `mod` 10)