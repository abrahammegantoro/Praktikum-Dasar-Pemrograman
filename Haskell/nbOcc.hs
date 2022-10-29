module ListOfInteger where
    -- DEFINISI DAN SPESIFIKASI LIST
    {- type List of Int: [ ] atau [e o List] atau [List o e]  
    Definisi type List of Int
    Basis: List of Int kosong adalah list of Int 
    Rekurens: 
    List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
    sebuah list atau
    dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

    -- DEFINISI DAN SPESIFIKASI PREDIKAT
    nbOcc :: [Int] -> Int -> Int

    isEmpty :: [Int] -> Bool
    -- isEmpty l  true jika list of integer l kosong

    -- REALISASI
    isEmpty l = null l

    nbOcc l x =
        if isEmpty l then 0
        else
            if x == head l then 1 + nbOcc (tail l) x
            else nbOcc (tail l) x   