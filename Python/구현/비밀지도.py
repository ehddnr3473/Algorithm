def solution(n, arr1, arr2):
    map_a = [[0 for _ in range(n)] for _ in range(n)]
    map_b = [[0 for _ in range(n)] for _ in range(n)]
    
    # arr1과 arr2의 내용을 map_a, map_b에 매핑 
    for i in range(n):
        row_a = verify(n, format(arr1[i], 'b'))
        row_b = verify(n, format(arr2[i], 'b'))
        for j in range(n):
            if row_a[j] == '1':
                map_a[i][j] = 1
            if row_b[j] == '1':
                map_b[i][j] = 1
    print("map_a:")
    print(map_a)
    print("map_b:")
    print(map_b)
    answer = [[' ' for _ in range(n)] for _ in range(n)]
    
    for i in range(n):
        for j in range(n):
            if map_a[i][j] == 1 or map_b[i][j] == 1:
                answer[i][j] = '#'
    
    for i in range(len(answer)):
        answer[i] = ''.join(answer[i])
    return answer

def verify(n, string):
    string = ('0'*(n-len(string)) + string) if len(string) < n else string
    return string

n = 5
arr1 = [9, 20, 28, 18, 11]
arr2 = [30, 1, 21, 17, 28]
print(solution(n, arr1, arr2))