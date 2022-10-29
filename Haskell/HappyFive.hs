module HappyFive where
    isEmpty :: [Int] -> Bool
    konso :: Int -> [Int] -> [Int]

    happyFive :: [Int] -> [Int]

    isEmpty li = null li

    konso e li = [e] ++ li

    happyFive li =
        if isEmpty li then li
        else        
            if mod (head li) 5 == 0 || (head li >= 50 && head li <= 59) then konso (head li) (happyFive (tail li))
            else happyFive (tail li)