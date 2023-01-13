# 모든 원소의 값이 0보다 크거나 같다고 가정
array = [7, 5, 9, 0, 3, 3, 1, 6, 2, 4, 8, 8, 8, 20]

count = [0] * (max(array) + 1)

for i in range(len(array)):
    count[array[i]] += 1 # 각 데이터에 해당하는 인덱스 값 증가

for i in range(len(count)):
    for j in range(count[i]):
        print(i, end=' ')