def fizz_buzz
    for number in 1..100 do
        if number % 5 === 0 && number % 3 === 0
            puts "FizzBuzz"
        elsif number % 5 === 0
            puts "Buzz"
        elsif number % 3 === 0
            puts "Fizz"
        else
            puts number
        end
    end
end

fizz_buzz()