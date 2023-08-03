#値を代入。リスト化
user_input = input()
li = user_input.split(" ")

#リストの値を数字化
li = [int(s) for s in li]

#kmをcmに変換
distance = li[0] * 100000
step = li[1]

#if文で一万歩に達成したかを分岐
if distance / step >= 10000:
    print("yes")
else:
    print("no")

