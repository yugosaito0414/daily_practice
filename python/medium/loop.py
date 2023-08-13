# loop から一番大きな数字を取り出すやり方。

N = int(input())

li = [0] * N 

for i in range(N):
    a = input()
    li[i] = a

print(max(li))
