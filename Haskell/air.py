T = int(input(""))

if T<0 :
    kondisi = "PADAT"
elif T == 0:
    kondisi = "ANTARA PADAT-CAIR"
elif T > 0 and T < 100 :
    kondisi = "CAIR"
elif T == 100 :
    kondisi = "ANTARA CAIR-GAS"
elif T>100:
    kondisi = "GAS"

print(kondisi)