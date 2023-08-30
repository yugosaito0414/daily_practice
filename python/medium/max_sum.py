n, k = map(int, input().split())
a = list(map(int, input().split()))

ans = 0
for i in range(n - k + 1):
    su = 0
    for j in range(k):
        su += a[i + j]
    ans = max(ans, su)
print(ans)
