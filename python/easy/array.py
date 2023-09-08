n, q = map(int, input().split())

li = list(map(int, input().split()))

for i in range(q):
    k = list(map(int, input().split()))
    if k[0] == 0:
        li.append(k[1])
    elif k[0] == 2:
        print(*li)
    elif k[0] == 1:
        li.pop(-1)
