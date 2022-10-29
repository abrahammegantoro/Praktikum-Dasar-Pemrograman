# Program RataRataSiswa
# Spesifikasi : ....
import tulisdata

# KAMUS
# namafile: string
# lst : array of tuple
# tup : tuple
# currNoIn, CurrSum, CurrCount, rata : integer

# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSiswa(namafile)

f = open(namafile,'r')
lst = []

line1 = f.readline()
if line1 == "99999999":
    print("File kosong")
else:
    while line1 != "99999999":
        line2 = f.readline()
        line3 = f.readline()
        tup = (int(line1),line2,int(line3))
        lst.append(tup)
        line1 = f.readline()

    lst.sort(key=lambda tup: tup[0]) 
    lst.append("mark")
    i = 0
    while lst[i] != "mark":
        currNoIn = lst[i][0]
        CurrSum = 0
        CurrCount = 0
        while True:
            CurrSum += lst[i][2]
            CurrCount += 1
            i += 1
            if currNoIn != lst[i][0]:
                break
        rata = "{:.2f}".format(CurrSum/CurrCount) 
        print(str(currNoIn) + "=" + str(rata))
f.close()