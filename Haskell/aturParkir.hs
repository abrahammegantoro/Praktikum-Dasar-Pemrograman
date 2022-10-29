aturParkir :: [Int] -> Int -> (Int -> Int) -> ([Int],Int)
{- Fungsi aturParkir (li,n,m) menerima li  sebagai list integer nomor kendaraan, n sebagai integer banyaknya slot parkir yang tersedia, serta f yang menerima sebuah fungsi penentuan slot parker serta menghasilkan output berupa tuple dari list berisi nomor slot parkir yang digunakan serta banyaknya kendaraan dari list masukkan yang tidak dapat parkir -}

-- REALISASI
aturParkir li n m
	| isEmpty li = ([],0)
	| otherwise =
		let
			(slot,kosong) = aturParkir (tail li) n m
			f (head li) n = nomor
		in
			if isMember nomor slot then (slot, kosong)
			else if nomor < 0 then (slot, kosong)
			else if nomor >= n then (slot, kosong)
			else (konso nomor slot, 1 + kosong)
