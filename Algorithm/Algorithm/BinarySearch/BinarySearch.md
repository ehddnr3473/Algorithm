# 순차 탐색(Sequential Search)
- 리스트 안에 있는 특정한 데이터를 찾기 위해 앞에서부터 데이터를 하나씩 차례대로 확인하는 방법
- 데이터의 개수가 N개일 때 최대 N번의 비교 연산이 필요하므로, 최악의 경우 순차 탐색의 시간 복잡도는 O(N)


<br></br>
# 이진 탐색(Binary Search)
- 탐색 범위를 절반씩 좁혀가며 빠르게 탐색하는 알고리즘
- 배열 내부의 데이터가 정렬되어 있어야만 사용할 수 있는 알고리즘. 데이터가 무작위일 때는 사용할 수 없지만, 이미 정렬되어 있다면 매우 빠르게 데이터를 찾을 수 있음.
- 이진 탐색은 한 번 확인할 때마다 확인하는 원소의 개수가 절반씩 줄어든다는 점에서 시간 복잡도는 O(logN)


<br></br>
## 동작
- 위치를 나타내는 변수 3개를 사용하는데, 이는 탐색하고자 하는 범위의 **시작점**, **끝점**, 그리고 **중간점**.
- 찾으려는 데이터와 중간점 위칭 있는 데이터를 반복적으로 비교해서 원하는 데이터를 찾는 것이 이진 탐색 과정

<br></br>
## 구현
- 재귀 함수를 이용
- 반복문을 이용

### 재귀 함수로 구현한 이진 탐색 코드
```swift
func binarySearch(_ array: [Int], _ target: Int, _ start: Int, _ end: Int) -> Int {
    if start > end {
        fatalError("데이터가 없음.")
    }
    let mid = (start + end) / 2
    
    // 찾음
    if array[mid] == target {
        return mid
    // 중간점의 값보다 찾고자 하는 값이 작은 경우, end를 앞으로 당겨서 왼쪽 확인
    } else if array[mid] > target {
        return binarySearch(array, target, start, mid-1)
    // 중간점의 값보다 찾고자 하는 값이 큰 경우, start를 뒤로 밀어서 오른쪽 확인
    } else {
        return binarySearch(array, target, mid + 1, end)
    }
}

// 띄어쓰기 없이 입력받기
// 1234
let array_1 = Array(readLine()!.map { Int(String($0))! })

// 띄어쓰기하여 입력받기
// 1 2 3 4
let array_2 = Array(readLine()!.components(separatedBy: " ").map { Int($0)!} )
let target = Int(readLine()!)!

print("Index: \(binarySearch(array_2, target, 0, array.count-1))")
```

### 반복문으로 구현한 이진 탐색 코드
```swift
func binarySearch(_ array: [Int], _ target: Int, _ start: Int, _ end: Int) -> Int {
    var start = start
    var end = end
    
    while start <= end {
        let mid = (start + end) / 2
        
        // 찾음
        if array[mid] == target {
            return mid
        // 중간점의 값보다 찾고자 하는 값이 큰 경우, start를 뒤로 밀어서 오른쪽 확인
        } else if array[mid] < target {
            start = mid + 1
        // 중간점의 값보다 찾고자 하는 값이 작은 경우, end를 앞으로 당겨서 왼쪽 확인
        } else {
            end = mid - 1
        }
    }
    fatalError("데이터가 없음.")
}

let array = Array(readLine()!.components(separatedBy: " ").map { Int($0)!} )
let target = Int(readLine()!)!

print("Index: \(binarySearch(array, target, 0, array.count-1))")
```
