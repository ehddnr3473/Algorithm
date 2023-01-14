
def solution(numbers):
    answer = []
    numbers.sort() # 오름차순 정렬
    mid = (len(numbers)-1) // 2
    numbers[mid], numbers[len(numbers)-1] = numbers[len(numbers)-1], numbers[mid]
    # 똑같은 표현: numbers[mid], numbers[-1] = numbers[-1], numbers[mid]
    left = mid + 1
    right = len(numbers) - 2
    while left <= right:
        numbers[left], numbers[right] = numbers[right], numbers[left]
        left = left+1
        right = right-1
    answer = numbers
    return answer

numbers = [7, 3, 4, 1, 2, 5, 6]
# 목표: [7, 3, 4, 1, 2, 5, 6] -> [1, 2, 3, 7, 6, 5, 4]
# 1 2 3 4 5 6 7
# mid => 3, len(numbers)-1 => 6 (swap)
# 1 2 3 7 5 6 4 < 여기에서 4는 이미 자기 자리를 찾음.
# left = 4, right = 6 (swap) X
# 1 2 3 7 4 6 5

ret = solution(numbers)
print(ret)