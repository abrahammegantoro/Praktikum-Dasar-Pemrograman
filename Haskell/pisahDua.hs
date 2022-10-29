konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
isEmpty :: [Int] -> Bool 
isEmpty l = null l

lebihkecil :: [Int] -> Int -> [Int]
lebihkecil li n
    | isEmpty li = []
    | otherwise = 
        if head li <= n then
            konso (head li) (lebihkecil (tail li) n)
        else
            lebihkecil (tail li) n

lebihbesar :: [Int] -> Int -> [Int]
lebihbesar li n
    | isEmpty li = []
    | otherwise =
        if head li > n then
            konso (head li) (lebihkecil (tail li) n)
        else
            lebihbesar (tail li) n

pisahDua :: [Int] -> Int -> ([Int],[Int])
pisahDua l n = (lebihkecil l n, lebihbesar l n)

pisahDua2 :: [Int] -> Int -> ([Int],[Int])
pisahDua2 l n
    | isEmpty l = ([],[])
    | otherwise =
        let
            (l1,l2) = pisahDua2 (tail l) n
        in
            if head l <= n then
                (konso (head l) l1, l2)
            else
                (l1, konso (head l) l2)