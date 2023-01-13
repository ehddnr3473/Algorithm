string = "Hello"
string_2 = "World"

# 포맷
print(f'string = {string}')

# string과 string_2의 개별 인덱스에 접근하여 문자가 다르다면, result 증가
def solution(string: string, string_2: string) -> int:
    max_length = max(len(string), len(string_2))
    result = 0
    for i in range(max_length):
        # 문자열 인덱스 접근
        if string[i] != string_2[i]:
            result += 1
    return result

print(solution(string, string_2))