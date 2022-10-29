module ListOfInteger where
    -- DEFINISI DAN SPESIFIKASI LIST
    {- type List of Int: [ ] atau [e o List] atau [List o e]  
    Definisi type List of Int
    Basis: List of Int kosong adalah list of Int 
    Rekurens: 
    List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
    sebuah list atau
    dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

    -- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso :: Int -> [Int] -> [Int]
    {- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
    (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
    -- REALISASI
    konso e li = [e] ++ li

    -- DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [Int] -> Bool
    -- isEmpty l  true jika list of integer l kosong
    -- REALISASI
    isEmpty l = null l

    isOneElmt :: [Int] -> Bool
    -- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
    -- REALISASI
    isOneElmt l = (length l) == 1 


    --DEFINISI DAN SPESIFIKASI
    setDiff::[Int]->[Int]->[Int]
    {-Fungsi setDiff(m,n) menerima dua masukan list (terurut membesar, unik) . Fungsi ini mengeluarkan sebuah 
    list integer yang elemennya adalah semua elemen l1 yang tidak ada di l2.-}
    isDiff::Int->[Int]->Bool
    {-Fungsi isDiff(x,l) menentukan apakah x bukan merupakan elemen l-}
    --REALISASI
    isDiff x l =
        if (isOneElmt l) then x /= (head l)
        else if (isEmpty l) then True
        else if x < (head l) then True
        else if x == (head l) then False
        else isDiff x (tail l)
                    
                    
    setDiff l1 l2 =
        if (isEmpty l1) then []
        else if isDiff (head l1) l2 then konso (head l1) (setDiff (tail l1) l2)
        else setDiff (tail l1) l2