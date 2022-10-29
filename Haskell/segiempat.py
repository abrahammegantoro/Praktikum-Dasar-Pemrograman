N = int(input(""))
C1 = input("")
C2 = input("")

if N>0 and C1 != C2 :
    if N==1:
        print(C1)
    if N==2:
        print(N*C1)
        print(N*C1)
    if N>2:
        print(N*C1)
        for i in range(0,N-2):
            print(C1+(N-2)*C2+C1)
        print(N*C1)
else :
    print("Masukan tidak valid")