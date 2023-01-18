# https://school.programmers.co.kr/learn/courses/30/lessons/132267

def solution(a, b, n):
    # 마트에 주어야 하는 병 수 a
    # 빈 병 a개를 가져다 주면 마트가 주는 콜라 병 수 b
    # 가지고 있는 빈 병의 개수 n
    answer = 0
    while a <= n:
        received = (n // a) * b
        n = n % a
        n += received
        answer += received
    
    return answer