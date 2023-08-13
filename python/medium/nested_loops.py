x, y = input().split()

x = int(x)
y = int(y)

for _ in range(y):
    for i in range(1, x+1):
        if i != x:
            print(i, end = " ")
        else:
            print(i)
