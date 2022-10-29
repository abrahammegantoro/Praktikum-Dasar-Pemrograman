kuranglimapuluh = 0
lebihseratus = 0
jumlah = 0
totalberat = 0
while True:
    berat = int(input(""))
    if berat>=30 and berat<=50:
        kuranglimapuluh += 1
        jumlah += 1
        totalberat += berat
    elif berat >= 100 and berat<= 200:
        lebihseratus += 1
        jumlah += 1
        totalberat += berat
    elif berat > 50 and berat < 100:
        jumlah += 1
        totalberat += berat
    elif (berat<30 or berat>200) and berat != -999 :
        continue
    elif berat == -999 :
        break
if jumlah == 0:
    print("Data kosong")
else :
    print(jumlah)
    print(kuranglimapuluh)
    print(lebihseratus)
    print(round(totalberat/jumlah))
    

    