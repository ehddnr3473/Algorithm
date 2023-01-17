# https://school.programmers.co.kr/learn/courses/30/lessons/42840

def solution(answers):
    first = [1, 2, 3, 4, 5]
    second = [2, 1, 2, 3, 2, 4, 2, 5]
    third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    scores = [0, 0, 0]
    for i, answer in enumerate(answers):
        if first[i%5] == answer:
            scores[0] += 1
        if second[i%8] == answer:
            scores[1] += 1
        if third[i%10] == answer:
            scores[2] += 1
    
    high_score = max(scores)
    answer = []
    for i in range(len(scores)):
        if scores[i] == high_score:
            answer.append(i+1)
    return answer