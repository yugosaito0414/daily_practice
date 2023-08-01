n = int(input ())

li = [0] * n

values = input().split()
for i in range(n):
    li[i] = int(values[i])
    
for ele in li:
    print(ele)

