while True:
    R1 = float(input(""))
    R2 = float(input(""))
    R3 = float(input(""))

    pilihan = input("")
    if R1 > 0 and R2 > 0 and R3 > 0:
        if pilihan == "S" or pilihan == "s":
            RT = R1 + R2 + R3
            print('{:.2f}'.format(RT))
            break
        elif pilihan == "p" or pilihan == "P":
            RT = 1/(1/R1 + 1/R2 + 1/R3)
            print('{:.2f}'.format(RT))
            break
        else :
            print("Masukan salah")
    else :
        print("Masukan salah")