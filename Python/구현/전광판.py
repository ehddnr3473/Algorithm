'''
핸드폰 화면에 문구를 출력해주는 전광판 어플이 있습니다. 문구는 "happy-birthday"로 설정하였습니다. 전광판 어플은 다음과 같은 규칙으로 화면에 문구를 출력해 줍니다.
- 어플은 화면에 14자 문구를 출력합니다.
- 문구는 1초에 왼쪽으로 한 칸씩 움직입니다.
- 문구 이외의 부분은 "_"로 표시됩니다.
- 어플은 설정한 문구를 화면에 반복해 출력합니다.
- 어플은 문구가 다 지나가면 설정한 문구를 반복해 보여줍니다.
'''

def solution(phrases: str, second):
    second = second % 28 # 28초에 초기화
    if second < 14:
        phrases = phrases[:second]
        phrases = phrases.rjust(14, '_')
    elif second > 14:
        phrases = phrases[second-14:]
        phrases = phrases.ljust(14, '_')
    return phrases

#아래는 테스트케이스 출력을 해보기 위한 코드입니다.
phrases = "happy-birthday"
second = 15
ret = solution(phrases, second)

#[실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
print("solution 함수의 반환 값은", ret, "입니다.")