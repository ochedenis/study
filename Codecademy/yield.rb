def yield_name(name)
puts "In the method! Let's yield."
yield("Kim")
puts "In between the yields!"
yield(name)
puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }





def block_method
  puts "This is the first line in block_method."
  yield
  puts "This statement is after the yield keyword."
  yield
  puts "Second after the yield keyword."
end

block_method do
  puts "This statement is called from the block."
end


def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
end

get_name do |your_name|
  puts "That's a cool name, #{your_name}!"
end
