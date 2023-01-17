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

# print(binary_search(heights, m, 0, max(heights)))


# 2번째

def solution():
    input_data = list(map(int, input().split()))
    n, m = input_data[0], input_data[1]

    heights = list(map(int, input().split()))
    return binary(0, m, max(heights), heights)
    
def binary(start, target, end, heights):
    result = 0
    while start <= end:
        mid = (start+end)//2
        sum = cut(mid, heights)
        if sum >= target:
            result = mid
            start = mid + 1
        else:
            end = mid - 1
    return result
        
def cut(mid, heights):
    sum = 0
    for height in heights:
        if height > mid:
            sum += height - mid
    return sum

print(solution())