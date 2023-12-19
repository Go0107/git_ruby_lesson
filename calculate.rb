def calculate(num1, num2, operator)
    # クラスを完成させてください
    if num1 - num1.to_i == 0 && num2 - num2.to_i == 0
        case operator
        when "+"
            num1 + num2
        when "-"
            num1 - num2
        when "*"
            num1 * num2
        when "/"
            num1 / num2
        else
            "演算子には  +、-、*、/ のいずれかを使用してください"
        end
    else
        "num1、 num2 には整数を入力してください"
    end
end
  
puts "1番目の整数を入力してください:"
num1 = gets.chomp.to_f
  
puts "2番目の整数を入力してください:"
num2 = gets.chomp.to_f
  
puts "演算子(+, -, *, /)を入力してください:"
operator = gets.chomp
  
begin
    result = calculate(num1, num2, operator)
    puts result
rescue ZeroDivisionError # 例外処理を記載してください
    puts "ゼロによる割り算は許可されていません"
end

