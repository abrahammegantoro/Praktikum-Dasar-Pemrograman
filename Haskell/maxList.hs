isOneElement :: [Int] -> Bool

maxList :: [Int] -> Int

isOneElement li = length li == 1

maxList li =
    if isOneElement li then head li
    else
        let max = maxList (tail li)
        in
            if max < head li then head li
            else max