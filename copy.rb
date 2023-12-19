def calculate(num1, num2, operator)
    begin
      case operator
      when "+"
        return num1 + num2
      when "-"
        return num1 - num2
      when "*"
        return num1 * num2
      when "/"
        if num2 == 0
          raise ZeroDivisionError.new("ゼロによる割り算は許可されていません")
        end
        return num1 / num2
      else
        raise ArgumentError.new("演算子には  +、-、*、/ のいずれかを使用してください")
      end
    rescue ZeroDivisionError => e
      puts "Error: #{e.message}"
    rescue ArgumentError => e
      puts "Error: #{e.message}"
    end
  end
  
  puts calculate(4, 0, "/") # Output: Error: Cannot divide by zero
  puts calculate(4, 2, "+") # Output: 6
  puts calculate(4, 2, "-") # Output: 2
  puts calculate(4, 2, "*") # Output: 8
  puts calculate(4, 2, "/") # Output: 2
  
  puts calculate(4, 2, "%") # Output: Error: Invalid operator
  