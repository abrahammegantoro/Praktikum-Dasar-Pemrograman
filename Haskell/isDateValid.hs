isDateValid :: Int -> Int -> Int -> Bool
isDateValid d m y =
    (y >= 1900 && y <= 1999) &&
        if m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12
            then d <= 31 && d>=1
        else if m == 4 || m == 6 || m == 9 || m == 11
            then d <= 30 && d>=1
        else (m == 2) && (
            if (mod y 400 == 0) || (mod y 100 /= 0 && mod y 4 ==0)
                then d <= 29 && d>=1
            else d <= 28 && d>=1)