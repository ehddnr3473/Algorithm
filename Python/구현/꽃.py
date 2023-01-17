#다음과 같이 import를 사용할 수 있습니다.
#import math

def solution(n, garden):
    #여기에 코드를 작성해주세요.
    dx = [-1, 0, 1, 0]
    dy = [0, -1, 0, 1]
    cnt = 0
    while True:
        flower_cnt = 0
        for i in range(len(garden)):
            for j in range(len(garden)):
                if garden[i][j] == 1:
                    flower_cnt += 1
        if flower_cnt == len(garden) * len(garden): break
        
        visited = [[False for _ in range(len(garden))] for _ in range(len(garden))]
        print(visited)
        for i in range(len(garden)):
            for j in range(len(garden)):
                if not visited[i][j] and garden[i][j] == 1:
                    visited[i][j] = True
                    for k in range(4):
                        nx = i + dx[k]
                        ny = j + dy[k]
                        if (nx > -1 and nx < len(garden) and ny > -1 and ny < len(garden)) and not visited[nx][ny]:
                            visited[nx][ny] = True
                            garden[nx][ny] = 1
        print(garden)
        cnt += 1
                
    return cnt

#아래는 테스트케이스 출력을 해보기 위한 코드입니다.
n1 = 3
garden1 = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
ret1 = solution(n1, garden1)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret1, "입니다.")

n2 = 2
garden2 = [[1, 1], [1, 1]]
ret2 = solution(n2, garden2)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret2, "입니다.")

#####매개변수 설명
# 정원 크기 n과 현재 정원 상태를 담은 2차원 리스트 garden이 solution 함수의 매개변수로 주어집니다.
# * 정원 크기 n은 1보다 크고 100 보다 작거나 같은 자연수입니다.
# * 정원 상태를 담은 2차원 리스트 garden의 원소는 0 또는 1 입니다.
# * 이미 핀 꽃은 1로 아직 피지 않은 꽃은 0으로 표현합니다.
# * 정원에 최소 꽃 한 개는 피어 있습니다.


#####return 값 설명
# 꽃이 모두 피는데 며칠이 걸리는지 return 합니다.


#####예시
# | n | garden                        	| return |
# |---|-----------------------------------|--------|
# | 3 | [[0, 0, 0], [0, 1, 0], [0, 0, 0]] | 2  	|
# | 2 | [[1, 1], [1, 1]]              	| 0  	|