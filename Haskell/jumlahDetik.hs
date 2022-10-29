jumlahDetik :: Int -> Int -> Int -> Int
jumlahDetik j m d =
    if (j >= 0 && j <= 23) && (m >= 0 && m <= 59) && (d >= 0 && d<=59) then
        j * 3600 + m * 60 + d
    else 0 