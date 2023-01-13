# 기본 정렬 라이브러리 sorted() 메서드
# sorted() 메서드는 정렬된 리스트를 반환
array = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]
result = sorted(array)
print(result)

# 내부 원소 바로 정렬 List.sort()
my_array = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]
my_array.sort()
print(my_array)

# key를 활용한 정렬
my_array_2 = [('바나나', 2), ('사과', 5), ('당근', 3)]

def setting(data):
    return data[1]

result_2 = sorted(my_array_2, key=setting)

print(result_2)