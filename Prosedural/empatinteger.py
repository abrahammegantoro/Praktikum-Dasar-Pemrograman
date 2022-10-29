# Program EmpatInteger
# Input: 4 integer: A, B, C, D
# Output: Sifat integer dari A, B, C, D (positif/negatif/nol) 
#         Jika semua integer positif, tampilkan:
#         nilai maksimum, minimum, dan mean olympic
 
# KAMUS
# variabel
#    A, B, C, D : int
#    mo : real
 
# PROCEDURE DAN FUNCTION
def CekInteger (x):
    if x > 0:
        print("POSITIF")
    elif x < 0:
        print("NEGATIF")
    elif x == 0:
        print("NOL")
# I.S.: x terdefinisi, bertype int
# F.S.: Jika x positif, maka tertulis di layar: POSITIF
#       Jika x negatif, maka tertulis di layar: NEGATIF
#       Jika x nol, maka tertulis di layar: NOL
# Tuliskan realisasi prosedur CekInteger di bawah ini
              
def Max (a, b, c, d):
    array = [a,b,c,d]
    return max(array)
    
# menghasilkan nilai terbesar di antara a, b, c, d (integer)
# Tuliskan realisasi fungsi Max di bawah ini
            
def Min (a, b, c, d):
    array = [a,b,c,d]
    return min(array)
    
# menghasilkan nilai terkecil di antara a, b, c, d (integer)
# Tuliskan realisasi fungsi Min di bawah ini

def IsAllPositif (a, b, c, d):
    if a > 0 and b > 0 and c > 0 and d > 0:
        return True
    else :
        return False
# menghasilkan true jika a, b, c, d seluruhnya positif
# false jika tidak
# Tuliskan realisasi fungsi IsAllPositif di bawah ini
            
# PROGRAM UTAMA
# Tidak boleh diubah-ubah
# Input
A = int(input())
B = int(input())
C = int(input())
D = int(input())

# Menuliskan sifat integer
CekInteger(A)
CekInteger(B)
CekInteger(C)
CekInteger(D)

# Penulisan maksimum, minimum, dan mean olympic
if (IsAllPositif(A,B,C,D)):
    print(Max(A,B,C,D))
    print(Min(A,B,C,D))
    mo = (A + B + C + D - Max(A,B,C,D) - Min(A,B,C,D)) / 2
    print("%.2f" % mo)