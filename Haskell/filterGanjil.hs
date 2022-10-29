-- Definisi dan Spesifikasi

filterGanjil :: [Int] -> [Int]
{- filterGanjil(li) melakukan filtering terhadap sebuah list 
of integer li sehingga menghasilkan list dengan elemen yang hanya terdiri 
atas bilangan ganjil yang muncul di li.-}

isEmpty :: [Int] -> Bool
-- isEmpty li mengecek apakah list li kosong atau tidak

konsDot :: [Int] -> Int -> [Int]
-- konsDot (l,x) menghasilkan sebuah list dari l dan x
-- dengan x sebagai elemen terakhir

-- Realisasi

filterGanjil li
    | isEmpty li = [] -- basis
    | otherwise = 
        if mod (last li) 2 == 1 then
            konsDot (filterGanjil (init li)) (last li)
        else 
            filterGanjil (init li)

isEmpty = null
konsDot l x = l ++ [x]