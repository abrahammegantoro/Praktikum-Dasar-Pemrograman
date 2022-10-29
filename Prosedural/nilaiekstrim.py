N = int(input(""))
array = []
for i in range(0,N):
    isi = int(input(""))
    array.append(isi)

X = int(input(""))
maks = array[0]
min = array[0]
bukti = 0

for i in range(0,N):
    if X == array[i]:
        bukti += 1
    else:
        bukti += 0

if bukti != 0:
    for i in range(0,N):
        if array[i] >= maks:
            maks = array[i]
        
        if array[i] <= min:
            min = array[i]
    if maks == min and min == X:
        print("maksimum")
        print("minimum")
    elif maks == X:
        print("maksimum")
    elif min == X:
        print("minimum")
    else :
        print("N#A")
else:
    print(X,"tidak ada")

