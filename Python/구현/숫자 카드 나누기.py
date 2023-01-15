# https://school.programmers.co.kr/learn/courses/30/lessons/135807?language=python3
def solution(arrayA, arrayB):
    answer = max(verify(arrayA, arrayB), verify(arrayB, arrayA))
    return answer

def verify(cardsA, cardsB):
    common_devisors = get_common_devisor(cardsA)
    return get_large_cant_devide_number(common_devisors, cardsB)

def get_common_devisor(array):
    common_devisor = []
    count = 0
    for i in range(min(array), 1, -1):
        for x in array:
            if x % i == 0:
                count += 1
            else:
                break
        if count == len(array):
            common_devisor.append(i)
        count = 0
    return common_devisor

def get_large_cant_devide_number(common_devisors, cards):
    count = 0
    for i in range(len(common_devisors)):
        for x in cards:
            if x % common_devisors[i] != 0:
                count += 1
            else:
                count = 0
                break
        if count == len(cards):
            return common_devisors[i]
    return 0

a = solution([10, 17], [5, 20])
b = solution([10, 20], [5, 17])
c = solution([14, 35, 119], [18, 30, 102])

print(a)
print(b)
print(c)