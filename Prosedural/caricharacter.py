array = []
tidakada = 0
while True:
    N = int(input(""))
    if N>0 and N<=100:
        for i in range(0,N):
            char = input("")
            array.append(char)
        CC = input("")
        pertama = array[0]
        if CC == "s" or CC == "S":
            for i in range(0,N):
                if ord(array[i])>= 97 and ord(array[i])<=122:
                    print(i+1,array[i])
                    tidakada += 1
                    break
                else:
                    tidakada += 0
                    continue
            if tidakada == 0:
                print("Tidak ada huruf kecil")
            break
        elif CC == "L" or CC == "l":
            for i in range(0,N):
                if ord(array[i])>= 65 and ord(array[i])<=90:
                    print(i+1,array[i])
                    tidakada += 1
                    break
                else:
                    tidakada += 0
                    continue
            if tidakada == 0:
                print("Tidak ada huruf besar")
            break
        elif CC == "X" or CC == "x":
            for i in range(0,N):
                if ord(array[i])< 65 or (ord(array[i])>90 and ord(array[i])<97) or ord(array[i])>122:
                    print(i+1,array[i])
                    tidakada += 1
                    break
                else:
                    tidakada += 0
                    continue
            if tidakada == 0:
                print("Semua huruf")
            break
        else :
            print("Tidak diproses")
            break
    else :
        print("Masukan salah. Ulangi!")


