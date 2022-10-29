isEqFront :: [Char] -> [Char] -> Bool
--isEqFront t1 t2 menghasilkan nilai true jika potongan awal dari list t2 sama dengan list t1
--Asumsi t1 dan t2 tidak kosong dan t2 memiliki jumlah elemen sama atau lebih dari t1

isEmpty :: [Char] -> Bool
-- isEmpty untuk mengecek apakah isi list kosong atau tidak

-- Realisasi
isEmpty = null
isEqFront t1 t2
    | isEmpty t1 = True
    | otherwise =
        if head t1 == head t2 then
            True && isEqFront (tail t1) (tail t2)
        else False
