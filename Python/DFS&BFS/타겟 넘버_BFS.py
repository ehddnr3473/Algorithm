def solution(numbers, target):
    answer = 0
    leaves = [0]
    for num in numbers:
        tmp = []
        for parent in leaves:
            tmp.append(parent + num)
            tmp.append(parent - num)
        leaves = tmp
    print(leaves)
    for leaf in leaves:
        if leaf == target:
            answer += 1
    return answer


print(solution([4, 1, 2, 1], 2))
