module JamLembur where
    -- Definisi dan Spesifikasi
    jamLembur :: Int -> Int -> Int -> (Bool,Int,Int,Int)
        -- jamLembubr menerima tiga parameter berupa integer
        -- mengembalikan output tuple berisi bool dan 3 buah integer

    -- Realisasi
    jamLembur j m d
      | j == 16 && m >= 30 && d > 0 = (True,j-16,m-30,d)
      | j >= 17 && m < 30 = (True, j-17, m+30,d)
      | j >= 17 && m >= 30 = (True,j-16,m-30,d)
      | j<16 && m>=30 && d>0 = (False,15-j,89-m,60-d)
      | j<16 && m>=30 && d==0 = (False,15-j,90-m,d)
      | j<16 && m<30 && d==0 = (False,16-j,30-m,d)
      | j<16 && m<30 && d>0 = (False,16-j,29-m,60-d)
      | otherwise = (False,0,0,0)

    -- contoh aplikasi
    -- jamLembur 3 20 0