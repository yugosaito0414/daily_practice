# coding: utf-8
# Your code here!


n = int(input())

li = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 
    'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 
    'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
    'y', 'z'
    ]

capslock_enabled = False  # Initialize capslock state

for i in range(n):
    g = input().split()
    
    if g[0] == "capslock":
        capslock_enabled = not capslock_enabled
        
        
    elif g[0] in li and capslock_enabled == False:
        print(g[0], end = "")
        
    elif g[0] in li and capslock_enabled == True:
        g[0] = g[0].upper()
        print(g[0], end = "")
        
    elif g[0] == "shift":
        g[1] = g[1].upper()
        print(g[1], end = "")
