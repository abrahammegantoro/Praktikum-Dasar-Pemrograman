module ListOfInteger where

-- Definisi dan Spesifikasi
-- Fungsi yang mengambil 2 list dengan elemen unik dan menaik, kemudian memberikan list berisi elemen yang dapat ditemukan pada kedua list

setIntersect :: [Int] -> [Int] -> [Int]
setIntersect list1 list2
  | null list1 || null list2 = []
  | head list1 `elem` list2 = head list1 : setIntersect (tail list1) list2
  | otherwise = setIntersect (tail list1) list2

-- setIntersect [2, 3, 5, 7] [5, 7, 8, 9, 10] = [5, 7]
-- [2, 3, 5, 7]
-- [5, 7, 8, 9, 10]
-- elem element list
-- element `elem` list
-- 2 `mod` 5
-- mod 2 5