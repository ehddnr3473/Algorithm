#다음과 같이 import를 사용할 수 있습니다.
#import math
from collections import deque

def solution(garden):
    #여기에 코드를 작성해주세요.
    n = len(garden)
    result = 0
    dx = [-1, 0, 1, 0]
    dy = [0, -1, 0, 1]
    queue = deque()
    
    for x in range(n):
        for y in range(n):
            if garden[x][y] == 1:
                queue.append((x, y))
                
    while queue:
        for i in range(len(queue)):
            x, y = queue.popleft()
            
            for i in range(4):
                nx = x + dx[i]
                ny = y + dy[i]
                
                if (nx > -1 and nx < n and ny > -1 and ny < n) and garden[nx][ny] == 0:
                    garden[nx][ny] = 1
                    queue.append((nx, ny))
        result += 1
    
    return result-1
    
    

#아래는 테스트케이스 출력을 해보기 위한 코드입니다.
garden1 = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
ret1 = solution(garden1)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret1, "입니다.")

garden2 = [[1, 1], [1, 1]]
ret2 = solution(garden2)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret2, "입니다.")

garden3 = [[0, 0, 0], [0, 0, 0], [1, 0, 0]]
ret3 = solution(garden3)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret3, "입니다.")

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