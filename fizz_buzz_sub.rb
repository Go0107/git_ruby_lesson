require 'debug'

def fizz_buzz(number)
    binding.break
    if number % 5 === 0 && number % 3 === 0
        "FizzBuzz"
    elsif number % 5 === 0
        "Buzz"
    elsif number % 3 === 0
        "Fizz"
    else
        number.to_s
    end
end

