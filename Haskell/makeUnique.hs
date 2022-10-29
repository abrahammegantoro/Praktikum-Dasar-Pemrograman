module ListOfCharacter where

-- menghasilkan elemen elemen unik

-- DEFINISI DAN SPESIFIKASI
makeUnique :: String -> String
-- mengembalikan string yang unik

isOneElement :: String -> Bool
-- mengembalikan nilai true jika element List tinggal 1

isMember :: String -> Char -> Bool
-- mengecek keangotaan suatu char dalam string 

konsoDot :: String -> Char -> String
--menambahkan element dengan list yang sudah ada dari belakang

-- REALISASI
isOneElement l = length l == 1

isMember l x
  | null l = False
  | head l == x = True
  | otherwise = isMember (tail l) x

konsoDot l e = l ++ [e]

makeUnique list = 
  if isOneElement list then [head list] --Basis

  else -- Rekurens
    let string = makeUnique (init list)
    in
      if isMember string (last list) then string
      else konsoDot string (last list)
