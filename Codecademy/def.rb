def fizzbuzz(x)
  if x % 15 == 0
    puts "FizzBuzz"
  elsif x % 5 == 0
    puts "Buzz"
  elsif x % 3 ==0
    puts "Fizz"
  else
    puts ".!.."
  end
end

fizzbuzz(77 )# "..!."
fizzbuzz(3 )# "Fizz"
fizzbuzz(50) # "Buzz"
fizzbuzz(15) # "FizzBuzz"
fizzbuzz(5175) # "FizzBuzz"
