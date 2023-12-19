def select_even_numbers(numbers)
    # 関数を完成させてください
    # 配列の偶数を抽出する処理
    return numbers.select { |num| num % 2 === 0}
end

even_numbers = select_even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print even_numbers