# https://school.programmers.co.kr/learn/courses/30/lessons/72410

def solution(new_id: str):
    # 1
    new_id = new_id.lower()
    # 2
    answer = ''
    for word in new_id:
        if word.isalnum() or word in '-_.':
            answer += word
    # 3
    while '..' in answer:
        answer = answer.replace('..', '.')
    # 4
    answer = answer[1:] if answer[0] == '.' and len(answer) > 1 else answer
    answer = answer[:-1] if answer[-1] == "." else answer
    
    # 5
    answer = 'a' if answer == '' else answer
    
    # 6
    if len(answer) >= 16:
        answer = answer[:15]
        if answer[-1] == '.':
            answer = answer[:-1]
    
    # 7
    while len(answer) <= 2:
        answer += answer[-1]
    
    return answer

print(solution("...!@BaT#*..y.abcdefghijklm"))