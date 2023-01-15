from collections import deque


def solution(s):
    x = s[0]
    x_cnt = 0
    x_i = 0
    o_cnt = 0
    string_array = []
    for i in range(len(s)):
        if i == len(s)-1:
            string_array.append(s[i])
            break
        if s[i] == x:
            x_cnt += 1
        else:
            o_cnt += 1
        if x_cnt == o_cnt:
            string_array.append(s[x_i:i+1])
            if i+1 <= len(s):
                x = s[i+1]
                x_i = i+1
            else:
                string_array.append(s[x_i:-1])
            x_cnt = 0
            o_cnt = 0
    print(string_array)
    return len(string_array)


print(solution("abracadabra"))


def solution_2(s):
    answer = 0
    queue = deque(s)
    while queue:
        x = queue.popleft()
        x_cnt = 1
        o_cnt = 0
        while queue:
            o = queue.popleft()
            if o == x:
                x_cnt += 1
            else:
                o_cnt += 1
            if x_cnt == o_cnt:
                answer += 1
                break
    if x_cnt != o_cnt:
        answer += 1

    return answer
