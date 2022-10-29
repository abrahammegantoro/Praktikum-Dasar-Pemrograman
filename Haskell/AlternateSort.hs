module AlternateSort where
  konso :: Int -> [Int] -> [Int]
  {- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
    (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
  -- REALISASI
  konso e li = [e] ++ li

  isOneElmt :: [Int] -> Bool
  -- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
  -- REALISASI
  isOneElmt l = length l == 1

  isEmpty :: [Int] -> Bool
  -- isEmpty l  true jika list of integer l kosong
  -- REALISASI
  isEmpty l = null l

  minElem :: [Int] -> Int
  -- menghasilkan elemen terkecil dari list of integer

  minElem li
    | isOneElmt li = head li
    | otherwise =
      if head li < minElem (tail li) then head li
      else minElem (tail li)

  del :: Int -> [Int] -> [Int]
  -- menghapus elemen x dari li

  del x li
    | isEmpty li = []
    | x == head li = tail li
    | otherwise = konso (head li) (del x (tail li))

  sort :: [Int] -> [Int]
  -- sort mengurutkan list dari yg kecil ke terbesar

  sort li
    | isEmpty li = []
    | otherwise = konso (minElem li) (sort (del (minElem li) li))

  alternateSort :: [Int] -> [Int]

  alternateSort li
    | isEmpty li || isOneElmt li = li
    | otherwise = konso (head (sort li)) (konso (last(sort li)) (alternateSort(init(tail(sort li)))))
