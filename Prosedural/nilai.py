tidaklulus = 0
lulus = 0
jumlahmahasiswa = 0
totalnilai = 0
salah = 0
while True:
    nilai = int(input(""))
    if nilai>=0 and nilai<40:
        tidaklulus += 1
        jumlahmahasiswa += 1
        totalnilai += nilai
    elif nilai <= 100 and nilai >= 40:
        lulus += 1
        jumlahmahasiswa += 1
        totalnilai += nilai
    elif (nilai<0 or nilai>100) and nilai != -9999 :
        salah += 1
    elif nilai == -9999 :
        break
if jumlahmahasiswa == 0 and salah!=0:
    print(jumlahmahasiswa)
elif jumlahmahasiswa == 0 and salah == 0:
    print("Data nilai kosong")
else :
    print(jumlahmahasiswa)
    print(lulus)
    print(tidaklulus)
    print("%.2f" %(totalnilai/jumlahmahasiswa))
    

    