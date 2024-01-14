def fizzbuzz(num)
    if num % 3 == 0
        puts 'Fizz'
    elsif num % 5 == 0
        puts 'Buzz'
    elsif num % 15 == 0
        puts 'FizzBuzz'
    else
        puts num.to_s
    end
end

fizzbuzz(3)
fizzbuzz(5)
fizzbuzz(15)
fizzbuzz(46)
