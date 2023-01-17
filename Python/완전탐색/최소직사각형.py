# https://school.programmers.co.kr/learn/courses/30/lessons/86491

def solution(sizes):
    width = []
    height = []
    for i in range(len(sizes)):
        if sizes[i][0] < sizes[i][1]:
            sizes[i][0], sizes[i][1] = sizes[i][1], sizes[i][0]
        width.append(sizes[i][0])
        height.append(sizes[i][1])
        
            
    return max(width) * max(height)

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))

# prints "4000"