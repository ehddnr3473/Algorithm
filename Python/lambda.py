# 함수를 인자로 넘겨줄 때
def testLambda(g):
    g(1, 2, 3)


testLambda(lambda a, b, c: print("sum is",
                                 a+b+c, ":type of a", type(a),
                                 ":list object is", zip([a, b, c])))
