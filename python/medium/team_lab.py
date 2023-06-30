def variable_fibonacci(n):
    sequence = [1, 0, 5]  
    if n < 3:
        return sequence[:n+1]
    else:
        for i in range(3, n+1):
            next_num = sequence[i-1] + sequence[i-3]
            sequence.append(next_num)
        return sequence

result = variable_fibonacci(42)
print(result)