def get_common_devisor(array):
    result = []
    count = 0
    for i in range(min(array), 0, -1):
        for x in array:
            if x % i == 0:
                count += 1
            else:
                break
        if count == len(array):
            result.append(i)
        count = 0
    return result

array = [12, 6]
print(get_common_devisor(array))