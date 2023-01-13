# 원소의 개수: n
# 바꿔치기 횟수: k

n, k = map(int, input().split())
a = list(map(int, input().split()))
b = list(map(int, input().split()))

a.sort() # 배열 A는 오름차순 정렬
b.sort(reverse=True) # 배열 B는 내림차순 정렬

for i in range(k):
    if a[i] < b[i]:
        a[i], b[i] = b[i], a[i]
    else:
        break
    
print(sum(a))