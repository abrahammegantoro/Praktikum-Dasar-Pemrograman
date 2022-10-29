t = float(input(""))

k = input("")

if k == "R":
    konversi = 4/5*t
elif k == "F":
    konversi = (9/5*t) + 32
elif k == "K":
    konversi = t + 273.15

print('{:.2f}'.format(konversi))