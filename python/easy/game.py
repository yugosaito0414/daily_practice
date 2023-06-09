#対戦開戦を入力
input_line = int(input())

def calculate_match_count(n):
    return n * (n - 1) // 2

n = input_line
match_count = calculate_match_count(n)
print(f"{n}人の場合、対戦回数: {match_count}")
