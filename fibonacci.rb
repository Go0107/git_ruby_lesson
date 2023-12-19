def fibonacci(n)
    if n >= 2
        puts fibonacci(n - 1) + fibonacci(n - 2)
    elsif n == 0
        puts 0 
    elsif n == 1
        puts 1
    end

end

fibonacci(0)
fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(7)
fibonacci(30)