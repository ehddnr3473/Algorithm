array = [0, 1, 2]

print(len(array))
print(array.count)


# index return
def search_index(n):
    return array.index(n) if n in array else -1

index = search_index(3)
print(index)

unsorted_array = [7, 8, 4, 2, 5, 1]

# unsorted_array.sort()
print(sorted(unsorted_array))
print(unsorted_array)