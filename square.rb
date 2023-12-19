def square(numbers)
    # 関数を完成させてください
    # 配列の要素を２乗する処理を記述
    numbers.map do |number|
        # 配列を戻り値として返す
        number ** 2
    end
end

squared_numbers = square([5, 7, 10])
print squared_numbers