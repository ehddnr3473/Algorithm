# 이코테 201P, Parametric Search
# 적어도 m만큼의 떡을 손님이 가져가기 위해 
# 절단기에 설정할 수 있는 높이의 최댓값을 반환
def binary_search(heights, target, start, end):
    result = 0
    while start <= end:
        mid = (start + end) // 2
        if cut(heights, mid) >= target:
            result = mid
            start = mid + 1
        elif cut(heights, mid) < target:
            end = mid - 1
    return result

def cut(heights: list[int], target):
    sum = 0
    for height in heights:
        if height > target:
            sum += height - target
    return sum

input_data = input().split()
n = int(input_data[0])
m = int(input_data[1])

heights = list(map(int, input().split()))

print(binary_search(heights, m, 0, max(heights)))

