# Program HitungVokal
# Membaca masukan sejumlah karakter dan menyimpannya ke file data.txt
# Membaca isi file data.txt, menghitung dan menampilkan ada berapa
# banyak karakter huruf hidup dalam file

# KAMUS
mark = '.' # constant mark : character = '.'
hurufVokal = ["A","a","I","i","U","u","E","e","O","o"]
def in_array(val, array):
    for i in range(len(array)):
        if val == array[i]:
            return True
    return False

def TulisTeks():
# Membaca kalimat (kumpulan karakter) diakhiri mark dari keyboard
# dan menyimpannya ke file data.txt
    # KAMUS LOKAL
    # f : SEQFILE of char
    # kalimat
    # ALGORITMA
    f = open("dataku.txt",'w')
    kalimat = input() # Baca sebuah kalimat dari keyboard
                      # diakhiri mark '.'
                      # Kalimat kosong hanya ada mark
    f.write(kalimat)  # Menuliskan kalimat ke file
    f.close()

# ALGORITMA PROGRAM UTAMA
TulisTeks()
f = open("dataku.txt",'r')
data = f.read()
f.close()

i = 0
count = 0
while data[i] != mark:
    if in_array(data[i],hurufVokal):
        count += 1
    i += 1
print(count) 
# lengkapi program utama
