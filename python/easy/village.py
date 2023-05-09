# coding: utf-8
original_population = 100  # 元々の人口
monthly_increase = int(input()) # 増加人口数を入力させる
num_months = int(input()) # 増加月数を入力させる

total_increase = monthly_increase * num_months  # Yヶ月後に増加した人口数
total_population = original_population + total_increase  # Yヶ月後の総人口

print(total_population)
