def card_count(card):
  card_cnt = [0]*10
  for x in card:
    card_cnt[x] += 1
  return card_cnt

# level: 몇 번째 카드를 뽑는 것인가? 0 -> 1 -> 2 -> 3 -> ...
# max_level: 총 뽑을 카드의 수: 총 뽑을 카드의 수 == len(card)
# card_cnt: 각 번호 카드가 몇 장 있는지 표기한 것
# card_used: number를 만들기 위해 각 번호 카드가 몇 장 사용되었는지 표기한 것
# number: 만들어지고 있는/만들어진 숫자

def card_pick(level, max_level, card_cnt, card_used, number):
    if level == max_level:
        num_list.append(number)
        return
    for i in range(1, 10):
        if card_cnt[i] > card_used[i]:
            card_used[i] += 1
            card_pick(level+1, max_level, card_cnt, card_used, number*10+i)
            card_used[i] -= 1
            
def solution(card, n):
    # 여기에 코드를 작성해주세요.
    card_cnt = card_count(card)
    card_pick(0, len(card), card_cnt, [0]*10, 0)
    return num_list.index(n)+1 if n in num_list else -1

num_list = []
# 아래는 테스트케이스 출력을 해보기 위한 코드입니다.
card1 = [1, 2, 1, 3]
n1 = 1312
ret1 = solution(card1, n1)

# [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은 ", ret1, " 입니다.")
num_list.clear()
# 아래는 테스트케이스 출력을 해보기 위한 코드입니다.
card2 = [1, 1, 1, 2]
n2 = 1122
ret2 = solution(card2, n2)

# [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은 ", ret2, " 입니다.")