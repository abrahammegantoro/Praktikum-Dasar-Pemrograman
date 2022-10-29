isGanjil :: Int -> Bool

isKosong :: [Int] -> Bool

konso :: Int -> [Int] -> [Int]

filterGanjil :: [Int] -> [Int]


isGanjil angka = mod angka 2 == 1

isKosong = null

konso e li = [e] ++ li

filterGanjil li
  | isKosong li = li
  | isGanjil (head li) = konso (head li) (filterGanjil (tail li))
  | otherwise = filterGanjil (tail li)