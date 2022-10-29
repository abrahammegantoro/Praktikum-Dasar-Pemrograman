def length(list):
    count = 0
    for items in list:
        count += 1
    return count

def get_max(arr, index_start):
    # mendapatkan maksimum array dari indeks indeks_start sampai selesai
    max_el = arr[index_start]
    for i in range(index_start+1, length(arr)):
        if max_el < arr[i]:
            max_el = arr[i]
    return max_el      

def get_idx(arr, number):
    # mendapatkan index dari suatu angka dalam array
    for i in range(length(arr)):
        if arr[i] == number:
            return i

def swap(array, indeks_1, indeks_2):
    # swap elemen array indeks 1 dengan indeks 2
    array[indeks_1], array[indeks_2] = array[indeks_2], array[indeks_1]

def sort(arr):
    for i in range(length(arr)):
        maxArr = get_max(arr, i)
        maxIdx = get_idx(arr, maxArr)
        swap(arr, i, maxIdx)
    print(arr)

# SELECTION SORT

n = int(input())
arr = [0 for i in range(n)]

for i in range(n):
    arr[i] = int(input())    

sort(arr)