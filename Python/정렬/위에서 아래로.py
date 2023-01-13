# 수열을 오름차순으로 정렬

n = int(input())
array = []

for i in range(n):
    array.append(int(input()))
array.sort()
# 또는 array = sorted(array)
print(array)

# 수열을 내림차순으로 정렬
array.sort(reverse=True)
# 또는 array = sorted(array, reverse=True)
print(array)