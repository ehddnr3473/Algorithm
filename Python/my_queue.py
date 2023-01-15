from collections import deque

queue = deque()

queue.append(2)
queue.append(3)
print(queue)
queue.appendleft(5)
print(queue)
queue.popleft()
print(queue)

queue.reverse()
print("reversed queue:", queue)