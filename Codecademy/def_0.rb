def welcome
  puts "Welcome to Ruby!"
end

welcome



def array_of_10
  print (1..10).to_a
end

array_of_10



def square(n)
  puts n ** 2
end


square(4)


def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

=begin
* - tells the program that the method can receive one or more arguments.
=end
