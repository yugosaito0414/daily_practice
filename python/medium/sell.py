n = int(input())

sum = 0 
pants = False 

for i in range(n):
    a, b = input().split()
    sum += int(b)
    if a == "pants":
        pants = True

if pants and sum >= 2000:
    sum -= 500

print(sum)
