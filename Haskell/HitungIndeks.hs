module HitungIndeks where
    -- Definisi dan Spesifikasi
    hitungIndeks :: Float -> Float -> Float -> Int 
    hitungIndeks nilaiUTS nilaiUAS nilaiTubes
        | (nilaiUTS == 0) || (nilaiUAS == 0) || (nilaiTubes == 0) = 0
        | (nilaiUTS < 40) || (nilaiUAS < 40) = 1 
        | (nilaiUTS >= 75) && (nilaiUAS >= 75) && (nilaiTubes >= 75) = 4
        | (nilaiTubes < 40) && (nilaiUAS >= 40) && (nilaiUTS >= 40) = 2
        | (nilaiUTS < 75) && (nilaiUAS < 75) && (nilaiTubes < 75) = 2
        | otherwise = 3
