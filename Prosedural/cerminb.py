# Tuliskan identitas di sini

# Program GambarBTercermin
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar B tercermin sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarBTercermin(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar B tercermin dengan lebar sebesar N sesuai spesifikasi soal
# Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
    x = N
    a = 0
    while N>0 and N%2==1:
        print(" "*a+"*"*N)
        N -= 2
        a += 2
    N += 2
    a -= 2
    while N<x:
        N += 2
        a -= 2
        print(" "*a+"*"*N)


def IsValid(N):
    if N>0 and N % 2 == 1:
        return True
    else:
        print("Masukan tidak valid")
        return False
# menghasilkan true jika N positif dan ganjil, false jika tidak
# Lengkapilah kamus lokal dan algoritma fungsi di bawah ini

N = int(input(""))
if IsValid(N) :
    GambarBTercermin(N)