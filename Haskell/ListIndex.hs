module ListIndex where
    listIndex :: [Int] -> (Int->Char) -> [Char]

    nilai :: Int -> Char

    isEmpty :: [Int] -> Bool

    konso :: Char -> [Char] -> [Char]

    isEmpty l = null l

    konso e l = [e] ++ l

    nilai f
      | f>= 80 && f <= 100 = 'A'
      | f >= 70 && f< 80 = 'B'
      | f >= 65 && f<70 = 'C'
      | f>= 55 && f<65 = 'D'
      | otherwise = 'E'

    listIndex l nilai =
        if isEmpty l then []
        else konso (nilai (head l)) (listIndex (tail l) nilai)

