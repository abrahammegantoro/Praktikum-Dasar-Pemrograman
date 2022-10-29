import tulisdata
    
def sort_insertion_type(arr):
    for i in range(1, len(arr)):
        temp = arr[i]
        position = i-1
        while (position>=0 and temp[0]<arr[position][0]):
            arr[position+1] = arr[position]
            position -= 1
        temp = arr[position+1]

# ========================================================
# Program SortSiswa
# Spesifikasi : program yang membaca data siswa dari suatu tempat kursus dari suatu file teks
# dan mengurutkan data tersebut ke layar berdasarkan NoInduk secara terurut membesar serta menuliskan kembali data tersebut dalam keadaan terurut ke layar

# KAMUS
# namafile: string

# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSaham(namafile)

f = open(namafile,'r')
array = []
# print (f)

first_line = f.readline()
if first_line == "99999999":
    print("File kosong")
else:
    while first_line != "99999999":
        second_line = f.readline()
        third_line = f.readline()
        pline = (int(first_line),second_line,int(third_line))
        array.append(pline)
        first_line = f.readline()

    sort_insertion_type(array)
    for i in range(len(array)):
        print(array[i][0],end=",")
        print(array[i][1].rstrip(),end=',')
        print(array[i][2])
        
f.close()