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
  
  

begin 
    results = [calculate(1, 0, '/'), calculate(1.5, 2, '+'), calculate(1.5, 2, '**'), calculate(5, 2, '*')]
    results.each do |result|
        puts result
    end
rescue ZeroDivisionError
    puts "ゼロによる割り算は許可されていません"
end

calculate(1, 0, '/')
calculate(1.5, 2, '+')
calculate(1.5, 2, '**')
calculate(5, 2, '*')
