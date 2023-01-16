# 다음과 같이 import를 사용할 수 있습니다.
# import math

def solution(s1, s2):
    # 여기에 코드를 작성해주세요.
    # s1 앞 s2 뒤
    answer = 0
    for i in range(len(s2)):
        for j in range(len(s1)):
            if s1[j:] == s2[:i]:
                print(s1[j:])
                answer = max(answer, len(s1[j:]))
    
    # s2 앞 s1 뒤
    for i in range(len(s1)):
        for j in range(len(s2)):
            if s2[j:] == s1[:i]:
                print(s2[j:])
                answer = max(answer, len(s1[:i]))
    
    answer = len(s1) + len(s2) - answer
    return answer

def solution_2(s1, s2):
    s1_len = len(s1)
    s2_len = len(s2)
    
    for i in range(s1_len):
        if s1[i:] == s2[0:s1_len-i]: break
    else:
        i = s1_len
    n1 = s1_len - i
    
    for i in range(s2_len):
        if s2[i:] == s1[s2_len-i:]: break
    else :
        i = s2_len
    n2 = s2_len - i
    
    return s1_len + s2_len - max(n1, n2)

# 아래는 테스트케이스 출력을 해보기 위한 코드입니다.
s1 = "ababc"
s2 = "abcdab"
ret = solution(s1, s2)
ret2 = solution_2(s1, s2)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret, "입니다.")
print("solution_2 함수의 반환 값은", ret2, "입니다.")