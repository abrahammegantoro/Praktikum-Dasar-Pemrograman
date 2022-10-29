while True:
    count = 0
    N = int(input(""))
    if N > 0 and N <= 100:
        array = [0 for i in range(0,N)]
        for i in range(0,N):
            array[i] = int(input(""))
        X = int(input(""))

        if X == -1:
            for i in range(0,N):
                if array[i] < 0:
                    print(i+1,array[i])
                    break
                else :
                    count += 1
            if count == N :
                print("Tidak ada negatif")
                break
            else:
                break
        elif X == 0:
            for i in range(0,N):
                if array[i] == X:
                    print(i+1)
                    break
                else :
                    count += 1
            if count == N :
                print("Tidak ada 0")
                break
            else:
                break
        elif X == 1:
            for i in range(0,N):
                if array[i] > 0:
                    print(i+1,array[i])
                    break
                else :
                    count += 1
            if count == N :
                print("Tidak ada positif")
                break
            else:
                break
        else :
            print("Tidak diproses")
            break

    else :
        print("Masukan salah. Ulangi!")
