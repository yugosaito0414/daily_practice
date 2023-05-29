def generate_id(s):
    # 先頭の文字と最後の文字を取得して結合する
    first_char = s[0]
    last_char = s[-1]
    x = first_char + last_char

    return x

# ユーザーからの入力を受け取る
input_line = input()

# IDを生成
id = generate_id(input_line)
print(id)

